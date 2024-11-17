#!/bin/bash

echo "WELCOME TO WHILE BLOCK"
echo
echo "Printing the table of 2."

counter=1

while [ $counter -lt 11 ]
do
	ans=$((2 * $counter))
	echo "2 * $counter = $ans"
	sleep 0.5
	
	echo
	counter=$(($counter + 1))
done
echo "Printed table successfully"
	
