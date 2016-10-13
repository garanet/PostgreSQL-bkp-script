# PostgreSQL-bkp-script
PostgreSQL Full Backup Bash Script

This simple script in BASH for Linux creates a Full database Dump in PostgreSQL on a file that can be used later. 

Create a folder/backup with postgres user privileges and group root.

Place the following script named ' full-db-psql.sh ' in the folder you just created.

Make sure the script owner is root and changes the permissions in 744.

As root, run the script with the command: # sh full-db-psql.sh.

@ Procedure

~:$ git clone https://github.com/garanet/PostgreSQL-bkp-script.git

~:$ cd PostgreSQL-bkp-script/

-:$ sudo su -

-:$ mkdir /backup

~:$ mv full-db-psql.sh /backup 

-:$ cd /backup

-:$ chmod a+x full-db-psql.sh

~:$ sh full-db-psql.sh

You can put the script on your cronjob

~:$ sudo crontab -e

2016 - www.garanet.net
