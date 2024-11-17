#!/bin/bash

echo "WELCOME TO ELIF BLOCK"
echo
echo "Enter a number : "
read -p Number: num
echo

if [ $num -gt 100 ]
then 	
	sleep 2
	echo "Your entered number is greater than 100."
	sleep 2
	echo "Out of the block"
elif [ $num -lt 100 ]
then
	sleep 2
	echo "Yourn  entered number is less than 100."
	sleep 2
	echo "Out of the block"
else	
	sleep 2
	echo "Your entered number is equal to 100."
	sleep 2
	echo "Out of the block"
fi
