#!/bin/bash

echo "***************************************************"
echo
echo "Welcome to Nested block"
echo 

ls /var/run/apache2/apache2.pid

if [ $? -eq 0 ]
then
	sleep 2
	echo "Apache2 service is already up and  running"
	echo
	echo "Out of the block"
else
	sleep 2
	echo "Apache2 service is not running"
	echo
	echo "Starting Apache2 service"
	sleep 2
	echo
	systemctl start apache2

	if [ $? -eq 0 ]
	then
		sleep 2
		echo "Apache service started successfully !"
		echo "Out of the block."
	else
		sleep 2
		echo "Apache service failing to start. Contact the admin."
	fi
fi

echo "Out of the nested block" 
