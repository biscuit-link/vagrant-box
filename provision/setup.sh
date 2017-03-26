#!/bin/bash

echo "Provisioning virtual machine..."

echo "Updating packages..."
sudo apt update

# Git
echo "Installing Git..."
sudo apt-get install -y git

# Nginx
echo "Installing Nginx..."
sudo apt-get install -y nginx

# PHP and Packages Needed
echo "Installing PHP..."
sudo apt-get install -y php7.0-fpm php7.0-cli php7.0-zip php-pear php7.0-curl

# Nginx Config
echo "Configuring Nginx..."
cp /var/www/provision/nginx_vhost /etc/nginx/sites-available/nginx_vhost
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-available/default

echo "Restarting Nginx..."
service nginx restart > /dev/null

# Composer for PHP
echo "Installing Composer for PHP package management"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

echo 'Done! You are ready to develop!'
