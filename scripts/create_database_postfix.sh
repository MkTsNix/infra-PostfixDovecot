#!/bin/bash

DB="postfixdb"
USER="postfix"
PASS="postfix"


mysql -uroot -pvagrant -e "CREATE DATABASE $DB;"
mysql -uroot -pvagrant -e "CREATE USER '$USER'@'localhost' IDENTIFIED BY '$PASS';"
mysql -uroot -pvagrant -e "GRANT ALL PRIVILEGES ON $DB.* TO '$USER'@'localhost';"
mysql -uroot -pvagrant -e "FLUSH PRIVILEGES;"


