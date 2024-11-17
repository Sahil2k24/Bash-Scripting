#!/bin/bash

echo "*************************** Welcome to the WEB SETUP ******************************"
echo

### Installing packages

sudo apt install apache2 wget unzip -y
sudo systemctl start apache2
sudo systemctl enable apache2

echo "************************************************************************************************"
###Creating directory
echo "Creating directory........"
mkdir -p /tmp/webfiles
cd /tmp/webfiles

echo "************************************************************************************************"
### Downloading content

echo "Downloading the Web content"
wget https://www.tooplate.com/zip-templates/2107_new_spot.zip
echo

echo "Unzipping.................."
unzip 2107_new_spot.zip -y

echo

echo "************************************************************************************************"
echo "Copying all the content to the location"
sudo cp -r 2107_new_spot/* /var/www/html/


echo "************************************************************************************************"

sudo systemctl restart apache2
sudo systemctl status apache2

### Remove the webfiles
echo "************************************************************************************************"

echo "Removing the temporary files"
rm -rf /tmp/webfiles

echo "************************************************************************************************"

ls /var/www/html/
echo

echo "************************************************************************************************"
echo "************************************************************************************************"

echo "Congratulations! Your website has been started"

echo "************************************************************************************************"
echo "************************************************************************************************"

echo
echo "Get the IP address"
sudo ip addr show
echo

echo "************************************************************************************************"
echo "************************************************************************************************"
echo "************************************************************************************************"
