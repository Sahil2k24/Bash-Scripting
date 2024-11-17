#!/bin/bash

package="apache2 wget unzip"
dir="/tmp/webfiles"
link="https://www.tooplate.com/zip-templates/2107_new_spot.zip"
web="apache2"
zip="2107_new_spot.zip"
loc="/var/www/html/"
ip="ip addr show"

echo "*************************** Welcome to the WEB SETUP ******************************"
echo

### Installing packages

sudo apt install $package -y
sudo systemctl start $web
sudo systemctl enable $web

echo "************************************************************************************************"
###Creating directory
echo "Creating directory........"
mkdir -p $dir
cd $dir

echo "************************************************************************************************"
### Downloading content

echo "Downloading the Web content"
wget $1
echo

echo "Unzipping.................."
unzip $2.zip -y

echo

echo "************************************************************************************************"
echo "Copying all the content to the location"
sudo cp -r $2/* $loc


echo "************************************************************************************************"

sudo systemctl restart $web
sudo systemctl status $web

### Remove the webfiles
echo "************************************************************************************************"

echo "Removing the temporary files"
rm -rf $dir

echo "************************************************************************************************"

ls $loc
echo

echo "************************************************************************************************"
echo "************************************************************************************************"

echo "Congratulations! Your website has been started"

echo "************************************************************************************************"
echo "************************************************************************************************"

echo
echo "Get the IP address"
sudo $ip
echo

echo "************************************************************************************************"
echo "************************************************************************************************"
echo "************************************************************************************************"
