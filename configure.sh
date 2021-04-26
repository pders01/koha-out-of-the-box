#!/bin/bash

# Set bash to exit on error
set -e

# Check if this script is executed as root and abort if it isn't
if [[ "$(whoami)" != root ]]; then
  dialog --title 'Koha - Berechtigungsfehler' \
  --msgbox "Dieses Skript kann nur mit administrativen Rechten ausgeführt werden" 20 50 
  clear
  exit 1
fi


# Function definition for dialog prompting, hence the name prompt_dialog() 
prompt_dialog () {
	exec 3>&1;
	input=$(dialog --title 'Koha - Konfiguration' --inputbox "$1" 0 0 2>&1 1>&3);
	exitcode=$?;
	exec 3>&-;
}


# Function definition for choices of enabling additional modules or changing locale
prompt_choice () {
	dialog --title "$1" --yesno "$2" 7 60;
	response=$?
	case $response in
		0) "$3" && dialog --msgbox "Aktiviert" && clear;;
		1) systemctl restart apache2 && dialog --msgbox "Abgebrochen" && clear && exit 1;;
		255) echo "[ESC] key pressed" && clear && exit 1
	esac;
}

# Function to check whether user input is correct
prompt_save () {
	dialog --title "$1" --yesno "$2" 7 60;
	response=$?
	case $response in
		0) clear;;
		1) prompt_check_condition 'Geben Sie hier Ihren Domäne-Namen ein';;
		255) echo "[ESC] key pressed" && clear && exit 1
	esac;
}

# Function to catch multiple wrong inputs
prompt_check_condition () {
    if [ $response == 1 ]; then
        dialog --msgbox "Erneute Eingabe" 7 60 && clear \
        && prompt_dialog "$1" && result_domain=$input \
        && prompt_save 'Ist die Eingabe richtig?' "$result_domain"
    fi
}

prevent_override () {
	if grep -qP "$1" "$2"; then
		return
	else
		echo -e "$1" >> "$2"
	fi

}

# Enable rewrite and cgi apache modules; restart apache
a2enmod rewrite && a2enmod cgi && service apache2 restart

# Introductory message for the user
dialog --title 'Koha - Konfiguration' --msgbox 'Dieses Tool dient der Erstellung und Konfiguration einer sogenannten Koha-Instanz. Folgen Sie einfach den Anweisungen auf dem Bildschirm. Zur Navigation verwenden Sie die Pfeiltasten. Sie können Eingaben mit der Enter-Taste bestätigen und zwischen verschiedenen Ebenen mit der Tabulator-Taste wechseln.' 20 50

# Obtain local ip for eth0 and assign to $server_ip
server_ip=$(ip addr show eth0 | awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}')

# Funtion call for library name 
prompt_dialog "Bitte geben Sie hier den Namen Ihrer Bibliothek ein. Klein, keine Leer- oder Sonderzeichen, Worttrennung mit _"

result_name=$input

prompt_save 'Ist die Eingabe richtig?' "$result_name"

# Exit on user cancelation
if [ $exitcode == 1 ]; then
	exit 1
fi

# Create Koha instance based on name given through user input 
koha-create --create-db "$result_name"

# Enable apache modules 
a2enmod headers proxy_http

# Enable Koha psgi server
koha-plack --enable "$result_name" && koha-plack --start "$result_name" && systemctl restart apache2

# Print out passwd for koha instance
koha-passwd "$result_name" > kpw.txt

# Print out name of Koha instance
echo "$result_name" > libraryname.txt

# Funtion call for domain name
prompt_dialog 'Geben Sie hier Ihren Domäne-Namen ein'

result_domain=$input

prompt_save 'Ist die Eingabe richtig?' "$result_domain"

echo "$result_domain"
if [ $exitcode == 1 ]; then
	exit 1
fi

# Write local server ip to /etc/hosts with corresponding domain name for local instances
prevent_override "$server_ip\t$result_name.$result_domain" /etc/hosts 
prevent_override "$server_ip\t$result_name-intra.$result_domain" /etc/hosts

# echo -e "$server_ip\t$result_name.$result_domain" >> /etc/hosts
# echo -e "$server_ip\t$result_name-intra.$result_domain" >> /etc/hosts

# Disable apache default landing page
a2dissite 000-default.conf

# Replace default value with actual domain names in apache and koha config files
sed -i "s/myDNSname.org/$result_domain/g" /etc/koha/koha-sites.conf
sed -i "s/myDNSname.org/$result_domain/g" /etc/apache2/sites-available/"$result_name".conf

echo "Basiskonfiguration abgeschlossen"

systemctl restart apache2

# Function call for activation of german locale; might be changed for international rollout
prompt_choice 'Koha - Sprache' 'Möchten Sie die deutsche Sprachausgabe aktivieren?' ./modular_installation/kootb_translate.sh

# Funtion call for activation of Koha mail server
prompt_choice 'Koha - Mail' 'Möchten Sie den Email-Server aktivieren?' ./modular_installation/kootb_mail.sh

# Restart apache to enable changes
systemctl restart apache2



