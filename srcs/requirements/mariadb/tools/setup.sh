#!/bin/bash
service mysql start
echo "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" | mysql
echo "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD' ;" | mysql
echo "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%' ;" | mysql
echo "FLUSH PRIVILEGES;" | mysql

service mysql stop
exec mysqld
