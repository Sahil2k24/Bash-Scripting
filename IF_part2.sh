#!/bin/bash

echo "IF BLOCK"
echo
echo "Enter a name: "
read -p NAME: nm
echo

if [ $nm == "sahil" ]
then
	echo "Entered in IF block"
	sleep 2
	echo "Your name is $nm which is matching to our database"
else
	echo "Entered in ELSE block"
	sleep 2
	echo "Your name is $nm which is not matching to our database."
fi
sleep 2
echo "OUT OF IF-ELSE BLOCK"
echo
echo "***************************************************************************"

echo "Enter your number : "
read -p number: num
echo

if [ $num == 100 ]
then
	echo "entered in if block"
	sleep 2
	echo "your entered number is 100"
	echo
else
	echo "entered in else block"
	sleep 2
	echo "your entered number is not 100"
	echo
fi
sleep 2
echo
echo "out of all blocks."
echo 
echo "*****************************************************************************"
