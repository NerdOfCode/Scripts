#!/bin/bash

if [ $(whoami) != "root" ]
then
	echo "Please run as root..."
	exit 1
fi

if [ $(which nscd) ]
then
	sudo systemctl restart nscd
else
	echo "I don't think you have DNS caching"
fi
