#!/bin/bash
#Get battery percent
bat_percent=$(acpi | awk -F ", " '{print $2}' | tr -d %)


#When to start showing warnings
low=40
alert="Low battery, $bat_percent% left..."

notfiy_send_test=$(which notify-send)
if [ $? != 0 ]
then
	echo "Please install notify-send..."
	exit 1
fi

acpi_test=$(which acpi)
if [ $? != 0 ]
then
	echo "Please install acpi..."
	exit 1
fi


#Test if cord is plugged in 
plugged=$(acpi -a | awk -F ": " '{print $2}')

if [ $bat_percent -lt $low ] && [ $plugged != 'on-line' ]
then
	notify-send "$alert"
	exit 0
fi
