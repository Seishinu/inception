#!/bin/bash

cd /var/www/html
wp core download --path=/var/www/html --allow-root
wp config create --path=/var/www/html --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MDB_HOST --allow-root
wp core install --path=/var/www/html --url=$WPR_URL --title=$WPR_TITLE --admin_user=$WPR_ADMIN_USER --admin_password=$WPR_ADMIN_PASS --admin_email=$WPR_ADMIN_EMAIL --allow-root
wp user create --path=/var/www/html $WPR_USER $WPR_EMAIL --role=author --user_pass=$WPR_PASS --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

php-fpm7.3 -F