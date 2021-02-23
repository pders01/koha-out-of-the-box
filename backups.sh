#!/bin/bash

# create backup directory if it doesn't already exist
mkdir -p /var/lib/koha/backups

# ask for user platform
echo "Verwenden Sie KodependentOS oder eine generische Debian Installation?"

# template for crontab

echo "Wie hÃufig mÃchten Sie Backups der Datenbank durchfÃhren? Standardmaessig wiein Backup taeglich um Mitternacht durchgefuehrt."
options=("monatlich" "woechentlich" "taeglich" "stuendlich" "Ueberspringen")
select opt in "${options[@]}"
do
	case $opt in 
		"monatlich")
			interval="@monthly"
			break
			;;
		"woechentlich")
			interval="@weekly"
			break
			;;
		"taeglich")
			interval="@midnight"
			break;;
		"stuendlich")
			interval="@hourly"
			break;;
		"Ueberspringen")
			interval="@midnight"
			break
			;;
	esac
done

at_crontab="$interval	root	perl "

# cli-choice for said user platform
options=("KodependentOS" "Generische Installation auf einem Desktop/Server" "Abbrechen")
select opt in "${options[@]}"
do
	case $opt in 
		"KodependentOS") # case, where platform is KodependentOS
			path="/home/pi/Koha_out_of_the_box/utilities/backup.pl"
			echo  "$at_crontab$path" >> /etc/crontab
			break
			;;
		"Generische Installation auf einem Desktop/Server") # case, where platform is generic
			path="/root/Koha_out_of_the_box/utilities/backup.pl"
			echo  "$at_crontab$path" >> /etc/crontab
			break
			;;
		"Abbrechen")
			break
			;;
	esac
done



