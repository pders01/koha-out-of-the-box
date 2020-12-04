#!/bin/bash

libraryname=$( cat /home/dev/Koha_out_of_the_box/libraryname.txt )

koha-email-enable $libraryname
