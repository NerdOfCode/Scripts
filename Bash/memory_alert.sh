#!/bin/bash

##########################
#Disclaimer:
#Memory Alert is currently a work in progress and is not production ready...
###########################

#Change values below

email="admin@nerdofcode.com"
low_memory="10000" #In KB


#############################

#Requirement checking below

if [ ! -f /proc/meminfo ]
then
        echo "Sorry but your system is not supported..."
        exit 1
fi


if [ $(whoami) != root ]
then
        echo "This script needs to be run as root"
        exit 1
fi

if [ -f /var/log/memory_alert.log ]
then
        echo "Welcome back!!!"
else

        echo "Welcome to memory alert!!!"
        touch /var/log/memory_alert.log
fi

################################

#Magic happens below

free_mem=$(sudo cat /proc/meminfo | grep MemFree: | tr 'MemFree:' ' '  | tr 'kB' ' '  | sed 's/ //g' )
if [ $free_mem -lt $low_memory ]
then
        echo "Low memory!!! Free memory $free_memkB" | mail -s "Low Memory" $email
        echo "Email sent to $email at $(date)" > /var/log/memory_alert.log
fi


#Reset timer
sudo -k

exit 0
