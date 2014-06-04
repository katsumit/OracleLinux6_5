#!/bin/bash
mkdir -p /u01/app/grid
mkdir -p /u01/app/grid/product/11.2.0/grid
chown -R grid:oinstall /u01
mkdir -p /u01/app/oracle
mkdir -p /u01/app/oracle/product/11.2.0/db_home1
chown -R oracle:oinstall /u01/app/oracle
chmod -R 775 /u01
chmod 660 /dev/sd*
chown grid:asmadmin /dev/sd*
# chgrp oinstall /opt/oracle
