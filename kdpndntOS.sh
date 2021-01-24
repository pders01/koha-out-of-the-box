#!/bin/bash

rel=$(lsb_release -c | awk '{print $2}')

if [ "$rel" = "stretch" ] || [ "$rel" = "buster" ] || [ "$rel" = "bullseye" ]
    then
        echo "All good!"
    else
        echo "No suitable debian release! You may encounter issues."
fi

REQUIRED_PKG="gnupg gnupg2 figlet"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 
fi

figlet -t 'Koha out of the box'

touch  /etc/apt/sources.list.d/koha.list

wget -q -O- https://debian.koha-community.org/koha/gpg.asc |  apt-key add - && echo "Key import successful!"
apt-get update && echo "Update of package base successful!"

echo 'deb http://debian.koha-community.org/koha stable main' | tee -a /etc/apt/sources.list.d/koha.list && echo "Done"
apt-get update && echo "Adding koha to package sources successful!"

apt-get install koha-common mariadb-server && echo "Installation of koha-common successful!"

echo 'Installation of necessary dependencies complete. Next step is the configuration of your instance!'



