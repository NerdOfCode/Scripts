#!/bin/bash

#Change variables below to your likings!!!

#sleep time in seconds
s_time=0

#Make variable equal to nothing, if you dont want to clear terminal before displaying percent
clear="clear"

if [ ! $(which acpi) ]
then
	echo "Please install acpi..."
	exit 1
fi

percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')

$clear

echo "Your battery is currently at: $percent percent"

sleep $s_time
