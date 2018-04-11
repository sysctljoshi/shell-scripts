#######################################
#!/bin/bash
today="$(date +%F-%H-%M)"

su -c "/usr/local/pgsql/bin/pg_dump <DB_Name>  > /srv/dbback/<DB_Name>-$today.out" -s /bin/sh postgres

scp /srv/dbback/cpv-$today.out root@192.168.72.250:/data/NMDC_BACKUP/DATABASES/<Db_Name>

rm -rf /srv/dbback/cpv-$today.out

########################################
