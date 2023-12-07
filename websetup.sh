#!/bin/bash

sudo yum install wget unzip httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_health.zip

echo "#################################"
echo "Copy to html"
sudo cp -r 2098_health/* /var/www/html

systemctl restart httpd

rm -rf /tmp/webfiles