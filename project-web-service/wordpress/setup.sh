#!/bin/bash
apt-get update -y
apt-get install -y nginx
apt-get install -y curl
apt-get install php php-fpm php-curl php-mysql php-gd php-mbstring php-xml php-imagick php-zip php-xmlrpc -y
apt-get install wget tar -y
wget https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz
mv wordpress /var/www/html/wordpress/
mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
