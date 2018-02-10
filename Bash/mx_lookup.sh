#!/bin/bash
#Purpose: Look up MX records using a simple two step process

#Colors for all warnings and errors
RED='\033[0;31m'
NONE='\033[0m'

$(which dig >/dev/null 2>&1)

if [ $? != 0 ]
then
	echo "Please install the 'dig' command"
	exit 1
fi

read -p "Enter host domain: " host

mx_target=$(dig +short MX $host | awk -F " " '{print $2}')

ip=$(ping -c 1 $mx_target | awk -F " " '{print $5}' | sed 's/[^0-9.]*//g' | xargs)


echo "MX record: $mx_target"

if [ -z $ip ]
then
	printf "${RED}NOTE:${NONE} it is likely this IP blocks ICMP or ping requests\n"
fi
echo "IP: $ip"
