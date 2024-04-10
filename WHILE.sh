#!/bin/bash

echo "Welcome to WHILE block"

counter=0

while [ $counter -lt 5 ]
do
	sleep 1
	echo "Value of the counter is $counter."
	counter=$(($counter + 1))
	echo
	echo "******************************************8"
done

echo "Out of the block"
