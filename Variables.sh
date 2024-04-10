#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "*****************************************************"
echo

FREE=$(free -m | grep Mem | awk '{print $4}' )
LOAD=`uptime | awk '{print $4}'`
ROOTFREE=$(df -h | grep '/dev/root' | awk '{print $4}' )


echo "*****************************************************"
echo "Available RAM is $FREE mb"
echo "*****************************************************"

echo "*****************************************************"
echo "The uptime is $LOAD"
echo "*****************************************************"

echo "*****************************************************"
echo "Free root partition size is $ROOTFREE"
echo "*****************************************************"
echo "*****************************************************"
