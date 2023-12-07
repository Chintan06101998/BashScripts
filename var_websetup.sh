#!/bin/bash

PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"
sudo yum install $PACKAGE $SVC -y
sudo systemctl start $SVC
sudo systemctl enable $SVC
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL
ls
unzip $ART_NAME.zip

echo "#################################"
echo "Copy to html"
sudo cp -r $ART_NAME/* /var/www/html/

systemctl restart $SVC

rm -rf $TEMPDIR