#!/bin/bash

#Purpose: Creates and enables a swap file interactively
#Tested on: Arch Linux

swap_dir="/mnt"
swap_name="swapfile"

if [ "$EUID" -ne 0 ]
then
	echo "not root"
	exit 1
fi

fallocate_status=$(which fallocate >/dev/null 2>&1)

if [ "$?" -ne 0 ]
then
	echo "Please install fallocate"
	exit 1
fi


read -p "Enter size of swap file(Ex: 2GB): " swap_size
read -p "Can I create a swapfile located in /mnt, (y)es/(n)o: " choice


if [ "$choice" != "y" ]
then
	read -p "Enter directory to store swap(Ex: /mnt): " swap_dir
fi

fallocate --length $swap_size $swap_dir/$swap_name

chmod 600 $swap_dir/$swap_name

mkswap $swap_dir/$swap_name

read -p "Ready to enable swap (y/n): " choice

if [ "$choice" == "y" ]
then
	swapon $swap_dir/$swap_name
else
	exit 0 
fi

read -p "Would you like to enable this swap at boot(y/n): " choice

if [ "$choice" == "y" ]
then
	echo "$swap_dir/$swap_name swap swap defaults 0 0" >> /etc/fstab
	exit 0
else
	exit 0
fi
