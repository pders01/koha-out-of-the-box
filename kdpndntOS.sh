#!/bin/bash

# Check if this script is executed as root and abort if it isn't
if [[ "$(whoami)" != root ]]; then
  dialog --title 'Koha - Berechtigungsfehler' \
  --msgbox "Dieses Skript kann nur mit administrativen Rechten ausgeführt werden" 20 50 
  exit 1
fi

# Check the release to inform the user about possible problems
rel=$(lsb_release -c | awk '{print $2}')

if [ "$rel" = "stretch" ] || [ "$rel" = "buster" ] || [ "$rel" = "bullseye" ]
    then
        echo "Alles gut!"
    else
        echo "Kein unterstützes Debian-Release! Möglicherweise treten Fehler auf!"
fi

# Install necessary dependencies for this script
REQUIRED_PKG="gnupg gnupg2 figlet dialog"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 
fi

# Print the project name in ASCII-symbols
figlet -t 'Koha out of the box'

# Create a new list file for apt
touch  /etc/apt/sources.list.d/koha.list

# Add the project gpg-keys for the Koha repository
wget -q -O- https://debian.koha-community.org/koha/gpg.asc |  apt-key add - && echo "Schlüssel-Import erfolgreich!"
apt-get update && echo "Update der Paketquellen erfolgreich!"

# Add resource to package base
echo 'deb http://debian.koha-community.org/koha stable main' | tee -a /etc/apt/sources.list.d/koha.list && echo "Fertig!"
apt-get update && echo "Hinzufügen von Koha zu Paketquellen erfolgreich!"

# Install koha-common and mariadb
apt-get install koha-common mariadb-server -y && echo "Installation von koha-common und mariadb-server erfolgreich!"

# Inform the user that the setup process is complete
echo 'Installation der notwendigen Abhängigkeiten erfolgreich! Der nächste Schritt ist die Konfiguration einer Instanz: "configure.sh"'



