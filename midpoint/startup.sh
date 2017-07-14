#!/bin/sh

while ! curl -s mysql:3306 > /dev/null; do echo waiting for mysql to start; sleep 2; done;


if [ -f "mysql-3.6-all.sql" ]
then
  mysql -h mysql -u midpoint --password=password midpoint < /mysql-3.6-all.sql
  rm /mysql-3.6-all.sql
fi

exec /usr/local/bin/run-tomcat.sh