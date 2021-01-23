#!/bin/bash

dialog --title 'Koha - Konfiguration' --msgbox 'Dieses Tool dient der Erstellung und Konfiguration einer sogenannten Koha-Instanz. Folgen Sie einfach den Anweisungen auf dem Bildschirm. Zur Navigation verwenden Sie die Pfeiltasten. Sie können Eingaben mit der Enter-Taste bestätigen und zwischen verschiedenen Ebenen mit der Tabulator-Taste wechseln.' 20 50

a2enmod rewrite && a2enmod cgi && systemctl restart apache2

server_ip=$(ip addr show eth0 | awk '$1 == "inet" {gsub(/\/.*$/, "", $2); print $2}')


exec 3>&1;
result_name=$(dialog --inputbox 'Bitte geben Sie hier den Namen Ihrer Bibliothek ein (klein, keine Leer- oder Sonderzeichen, Worttrennung mit _' 0 0 2>&1 1>&3);
exitcode=$?;
exec 3>&-

koha-create --create-db $result_name

a2enmod headers proxy_http

koha-plack --enable $result_name && koha-plack --start $result_name && systemctl restart apache2

koha-passwd $result_name > kpw.txt

echo $result_name > libraryname.txt


exec 3>&1;
result_domain=$(dialog --inputbox 'Geben Sie hier Ihren Domäne-Namen ein' 0 0 2>&1 1>&3);
exitcode=$?;
exec 3>&-

echo -e "$server_ip\t$result_name.$result_domain" >> /etc/hosts
echo -e "$server_ip\t$result_name-intra.$result_domain" >> /etc/hosts

systemctl restart apache2



