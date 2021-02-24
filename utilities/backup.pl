#!/usr/bin/perl

use strict;
use warnings;
use POSIX qw(strftime);

# format the creation_date suitable for filename
my $creation_date = strftime "%a_%e_%b_%Y_%H:%M:%S", localtime;

# dump whole database into backup file
system("mysqldump --all-databases > /var/lib/koha/backups/$creation_date.sql");
