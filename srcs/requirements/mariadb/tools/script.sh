
#!bin/bash

service mysql start

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;" > mydb.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" >> mydb.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" >> mydb.sql
echo "FLUSH PRIVILEGES;" >> mydb.sql

mysql < mydb.sql

service mysql stop

mysqld --bind-address=0.0.0.0

mysqld_safe
