#!/bin/bash

echo "****************************************************"

echo "Welcome to Bash Scripting"
echo

###This prints the system info
echo "The uptime of the system is :"
uptime
echo

echo "****************************************************"
###This print memory utilization
echo "The memory utilization of the system is :"
free -m
echo

echo "****************************************************"
#This prints the disk utilization
echo "The disk utilization of the system is :  "
df -h
echo

echo "****************************************************"
#This prints the all process
echo "The process of the system are :"
top
read input
#q
echo

echo "****************************************************"
#This prints the active process
echo "The active processes in the system are : "
ps
echo

echo "****************************************************"
#This prints the information of the system
echo "The information of the system: "
cat /etc/os-release
echo

echo "****************************************************"
