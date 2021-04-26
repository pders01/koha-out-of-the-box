#!/bin/bash

locales=$(koha-translate --list --available)
i=1
for locale in $locales; do 
    echo "$i $locale" >> locales.txt
    i=$((i+1))
done

choice=$(dialog --menu "Wählen Sie die gewünschte Sprachausgabe" 20 50 30 $(cat locales.txt) 3>&2 2>&1 1>&3)
clear

language_code=$(grep "$choice" locales.txt | awk '{print $2}')

koha-translate --install "$language_code"

rm locales.txt
#koha-translate --list --available | less