#!/bin/bash

echo "*************************************"

users="alpha beta gamma"
echo

for usr in $users
	do
	echo "Adding new users"
	sleep 1
	sudo adduser $usr
	sudo id $usr
	echo
	echo "*************************************"
	done

echo "Out of the block" 
