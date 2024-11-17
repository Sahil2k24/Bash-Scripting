#!/bin/bash

echo "WELCOME TO IF BLOCK"
echo
echo "Enter a number: "
read -p Number: num
echo

if [ $num -lt 100 ]
then
   echo "Entered in IF block"
   sleep 2
   echo "Your number is greater than 100"
   echo
   date
fi
echo
echo "Script executed successfully !"
