#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl

git clone https://github.com/ruoxijing/itmo-544-2015fall.git

mv ./itmo-544-2015fall/images /var/www/html/images
mv ./itmo-544-2015fall/index.html /var/www/html
mv ./itmo-544-2015fall/page2.html /var/www/html
mv ./itmo-544-2015fall/*.php /var/www/html

curl -sS https://getcomposer.org/installer | php

php composer.phar require aws/aws-sdk-php

mv vendor /var/www/html

echo "Hello!" > /tmp/hello.txt
