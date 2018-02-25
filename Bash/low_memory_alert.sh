#!/bin/bash

#######################################
##Author: NerdOfCode
##Purpose: Notifies user of low memory
##Tested: Antergos 2/25/18
##Updated: 2/25/18
##NOTE: This script currently uses 100% single CPU core... I am working on a fix
#######################################

##Change variables below instead of using default
config=".low_mem_config"
config_file="config"

#Change debug='1' for debugging purposes
debug="0"

##DO NOT MESS WITH THESE VARIABLES... Unless you are contributing or having fun :)
current_dir="$(pwd)"
count=0

##Functions
create_config_file(){
	touch $config_file
	customize_config
}


customize_config(){
	#Take interval in seconds
	read -p "How often would you like to check memory status(Default: 20 seconds): " interval
	read -p "What is the threshold for notifiying of low memory(Default: 500MB left): " threshold
	read -p "What is the max amount of alerts you would like to receive:(Default: 0 -> unlimited): " alert_max

	#Check if variables fullfilled
	if [ -z $interval ]
	then
		interval="20"
	fi

	if [ -z $threshold ]
	then
		threshold="500MB"
	fi

	if [ -z $alert_max ]
	then
		alert_max="0"
	fi

	#Check if threshold variable is right
	if [ ! $(echo "$threshold" | grep "MB") ]
	then
		threshold="${threshold}MB"
	fi

	printf "#Config created by NerdOfCode's low_memory_alert.sh script!\n\n" >> $config_file
	#Start saving new config variables
	printf "#Interval to check memory status in seconds\ninterval=\"$interval\"\n" >> $config_file
	printf "#Threshold when to notify user\nthreshold=\"$threshold\"\n" >> $config_file
	printf "#Max Amount of alerts to notify user\nmax_alerts=\"$alert_max\"" >> $config_file
}

#Actually start doing heavy lifting!!!
start_running(){
	if [ ! -f $config/running ]
	then
		cd $current_dir
		touch $config/running
	fi

	#Gather variables values
	source $config/$config_file

	#Start performing checks
	free_memory="$(free -h | grep "Mem: " | awk -F " " '{print $4}')"

	#Prepare variables for mathematical calculations
	threshold="$(echo $threshold | tr -d \"MB\")"

	if [ $(echo $free_memory | grep "G") ]
	then
		free_memory="$(echo $free_memory | tr -d "G")"
		free_memory="$(echo "$free_memory * 1000" | bc)"
	fi



	check_memory_status
}

check_memory_status(){

	#Make sure variables are not floats...
	free_memory="$(echo $free_memory | cut -f1 -d ".")"
	threshold="$(echo $threshold | cut -f1 -d ".")"

	while [ $count -lt $max_alerts ]
	do
		if (( "${free_memory}" < "${threshold}" ))
        	then
			count+=1
			notify-send "Available Memory: $actual_threshold"
			sleep $interval
        		start_running
		fi
	done &
	killall $0

}

##Check for needed commands
if [ ! $(which notify-send) ]
then
	echo "Please install notify-send..."
	exit 1
fi

##Test for config file
if [ ! -d $config ]
then
	echo "Creating configuration directory..."
	mkdir $config
	cd $config
	if [ ! -f $config_file ]
	then
		echo "Creating config file"
		create_config_file
	fi
else
	echo "Using already configured settings at: $config"
	cd $config
	if [ ! -f $config_file ]
	then
		read -p "Config not found, create one(y/n): " choice
		if [ "$choice" == "y" ]
		then
			echo "Creating config"
			create_config_file
		fi
	fi
fi

##The script is now ready to be used
read -p "Would you like to start this script(y\n): " choice

if [ "$choice" == "y" ]
then
	start_running
else
	echo "Well it is ready for next use!!!"
	exit 0
fi
