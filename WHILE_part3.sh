#!/bin/bash

echo "WELCOME TO WHILE BLOCK"
counter=1

while [ $counter -lt 3 ]
do
	echo "Creating file$counter.txt"
	touch file$counter.txt
	sleep 1
	echo "Created file$counter.txt"
	echo
	echo "Writing into file$counter.txt"
	sleep 1
	echo "hello I am $counter.
	dsfkmaslkdfmlksamdflkmsldkmfsadfsa
	df
	sd
	fsadf
	sdf
	
	sdf
	s
	df
	s
	df
	sd
	f
	s
	df
	sadf
	asd
	f
	asdf
	
	sdf
	sd
	fsdf" > file$counter.txt
	echo "Written into file$counter.txt"
	echo
	counter=$(($counter + 1))
	echo "********************************************************"
done
sleep 1
echo "Out of the while block"
