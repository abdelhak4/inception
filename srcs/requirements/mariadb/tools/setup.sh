#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS wordpress ;" > db1.sql
echo "CREATE USER IF NOT EXISTS 'user1'@'%' IDENTIFIED BY 'password1' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'user1'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql