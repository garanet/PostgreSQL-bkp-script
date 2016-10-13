#!/bin/bash
# www.garanet.net
# PostgreSQL Full Backup Bash Script
# https://github.com/garanet/PostgreSQL-bkp-script.git

GZIP="$(which gzip)"

# Backup Databases.
su postgres -c 'pg_dumpall --clean -f /backup/full-db-psql.sql'

# Compress the db file.
DB="/backup/full-db-psql.sql"
FILE="/backup/full-db-psql.sql.gz"
$GZIP -9 -f $DB

# Change the permissions file if you need it.
chmod 600 $FILE
