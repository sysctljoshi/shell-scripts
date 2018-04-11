#######################################
#!/bin/bash
today="$(date +%F-%H-%M)"

su -c "/usr/local/pgsql/bin/pg_dump cpv  > /srv/dbback/cpv-$today.out" -s /bin/sh postgres

scp /srv/dbback/cpv-$today.out root@192.168.72.250:/data/NMDC_BACKUP/DATABASES/Preview/

rm -rf /srv/dbback/cpv-$today.out

########################################
