#!/bin/bash

rel=$(lsb_release -c | awk '{print $2}')

if [ "$rel" = "stretch" ] || [ "$rel" = "buster" ]
    then
        echo "All good!"
    else
        echo "No suitable debian release! You may encounter issues."
fi

touch  /etc/apt/sources.list.d/koha.list

wget -q -O- https://debian.koha-community.org/koha/gpg.asc |  apt-key add - && echo "Key import successful!"
apt-get update && echo "Update of package base successful!"

echo 'deb http://debian.koha-community.org/koha stable main' | tee -a /etc/apt/sources.list.d/koha.list && echo "Done"
apt-get update && echo "Adding koha to package sources successful!"

apt-get install koha-common && echo "Installation of koha-common successful!"

echo "Which database do you want to install?"
options=("MariaDB" "MySQL" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "MariaDB")
            echo "MariaDB selected"
            apt-get install mariadb-server
            ;;
        "MySQL")
            echo "MySQL selected"
            apt-get install mysql-server
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

a2enmod rewrite && a2enmod cgi && systemctl restart apache2

sed -i '/Listen 80/a Listen 8080' /etc/apache2/ports.conf

echo -n "Please enter the name of your library (lowercase, no spaces) [ENTER]: "
read name

koha-create --create-db $name

a2enmod headers proxy_http

koha-plack --enbable $name && koha-plack --start $name && systemctl restart apache2

koha-passwd $name > kpw.txt





