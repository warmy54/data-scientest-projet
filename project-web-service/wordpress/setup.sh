#!/bin/bash
apt-get update -y
apt-get install -y nginx
apt-get install -y curl
apt-get install php-fpm php-curl php-mysql php-gd php-mbstring php-xml php-imagick php-zip php-xmlrpc -y
apt-get install php -y
apt-get install wget tar -y
wget https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz

mv wordpress /var/www/html/wordpress/
sed -i -e 's/database_name_here/wordpress/g' /var/www/html/wordpress/wp-config-sample.php
sed -i -e 's/username_here/testuser/g' /var/www/html/wordpress/wp-config-sample.php
sed -i -e 's/password_here/testpw/g' /var/www/html/wordpress/wp-config-sample.php
sed -i -e 's/localhost/mariadb/g' /var/www/html/wordpress/wp-config-sample.php
mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

chown -R www-data:www-data /var/www/html/wordpress
chmod -R 755 /var/www/html/wordpress

mv wordpress.conf /etc/nginx/conf.d/wordpress.conf
rm /etc/nginx/sites-enabled/default
