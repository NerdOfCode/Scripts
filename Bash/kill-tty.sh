#!/bin/bash

#Tested on: 
#Antergos

#Check if user has ran this script before
check_file=".killtty"

#For skipping the check for root
bypass=0

if [[ ! -f $check_file ]] && [[ $ran != "1" ]]	
then
	chmod +x $0
	touch $check_file
	ran=1
fi


if [[ $1 == "bypass" ]]
then
	bypass=1
	shift
fi

if [[ $1 == "help" ]] || [[ $ran == "1"  ]]
then
	echo "Please make this script an executable by running: "
	echo "chmod +x kill-tty.sh"
	echo "Then execute by running ./kill-tty.sh"
	echo ""
	echo "If you cannot use root, use ./kill-tty.sh bypass"	
	shift
	exit 0
fi

if [ $(whoami) != "root" ] && [ $bypass == "0"  ]
then
	echo "Please run as root..."
	echo "Or consider using ./kill-tty.sh bypass"
	exit 1
fi

w_test=$(which w)
if [ $? != "0" ]
then
	echo "Please install the w command"
	exit 1
fi


w

read -p "Enter either a pts or a TTY session to kill (ex: pts/4): " session

sudo pkill -9 -t $session
