#!/bin/bash


# get the latest backup, through -t flag and join it with the backups directory
latest_backup=$(ls -t /var/lib/koha/backups | head -1)
backup_path="/var/lib/koha/backups/$latest_backup"

# restore database state from backup file 
mysql < $backup_path && echo "Datenbank zurückgesetzt auf Stand: $latest_backup"

# needs to be incremental in future versions of this tool

# https://mariadb.com/kb/en/restoring-data-from-dump-files/
# 
# GRANT SELECT
# ON db1.* TO 'admin_restore_temp'@'localhost' 
# IDENTIFIED BY 'its_pwd';
# 
# GRANT ALL ON db1.table1
# TO 'admin_restore_temp'@'localhost';
# 
# mysql --user admin_restore_temp --password --force < /data/backup/db1.sql


