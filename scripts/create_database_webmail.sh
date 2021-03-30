#!/bin/bash

DB="roundcubemail"
USER="roundcube"
PASS="roundcube"

mysql -uroot -pvagrant -e "CREATE DATABASE $DB;"
mysql -uroot -pvagrant -e "CREATE USER '$USER'@'localhost' IDENTIFIED BY '$PASS';"
mysql -uroot -pvagrant -e "GRANT ALL PRIVILEGES ON $DB.* TO '$USER'@'localhost';"
mysql -uroot -pvagrant -e "FLUSH PRIVILEGES;"


