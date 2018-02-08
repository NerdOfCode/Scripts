#!/bin/bash
#A simple script that half-heartedly tries to prevent command logging

cut=$(which cut >/dev/null 2>&1)

if [ $? != 0 ]
then
	echo "Please install the cut command..."
	exit 1
fi

hostname=$(cat /etc/hostname | cut -f1 -d ".")


while true
do

	read -p "$(whoami)@$hostname:$(pwd):~# " shell

	if [ $shell == 'exit' ] || [ $shell == 'quit' ]
	then
		exit 0
	fi

	$shell

done
