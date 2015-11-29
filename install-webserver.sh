#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql
sudo apt-get install php5 php5-imagick

git clone https://github.com/ruoxijing/itmo-544-2015fall.git

mv ./itmo-544-2015fall/images /var/www/html/images
mv ./itmo-544-2015fall/*.html /var/www/html
mv ./itmo-544-2015fall/*.php /var/www/html

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movecomposer.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

echo "Hello!" > /tmp/hello.txt
