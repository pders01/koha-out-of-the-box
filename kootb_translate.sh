#!/bin/bash

koha-translate --list --available | less

echo "Select the language code from the list above to install the corresponding locale for koha"
read language_code

koha-translate --install ${language_code}
