#!/bin/bash

### This is a sample script to get the CPU utilization of the system and based on that CPU%, the system should give specific message

########################################################

#Author: Sahil Patil
#Date: 17-Nov-2024
#Day: Sunday
#Time: 10:45AM

#######################################################

# So firstly I will write the script the script and then I will explain it at the end.

echo "###################################################################################"
echo "###################################################################################"
echo
echo "This is the real time view of SYSTEM !"
top -bn1
echo
echo "###################################################################################"
echo "###################################################################################"

cpu=$( top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

echo "Your CPU UTILIZATION IS  : $cpu%"
echo
echo "Based on the CPU Utilization of your system, here is the required message"
echo

if [ $(echo "$cpu > 50" | bc) -eq 1 ];
then

echo "###################################################################################"
echo "###################################################################################"
echo

echo "Since, Your CPU Utlization is more than 50%, YOUR SYSTEM IS UNDER PRESSURE ...!"
else
echo "YOUR SYSTEM IS NORMAL !"
echo

echo "###################################################################################"
echo "###################################################################################"

fi 

#######################################################################################

### EXPLAINATION ###

# This script checks the CPU usage and alerts if it exceeds 50%.

# 1. Get CPU usage:  
#    The `top -bn1` command gives CPU stats, and `awk` extracts the percentage of CPU that's in use (100% - idle).

# 2. Compare usage:  
#    It checks if the CPU usage is greater than 50% using `bc` for the comparison.

# 3. Output:  
#    - If usage is over 50%, it prints "CPU Overload".
#    - Otherwise, it prints "CPU is running normally".

#######################################################################################
