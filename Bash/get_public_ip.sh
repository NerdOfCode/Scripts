#!/bin/bash

which dig >/dev/null 2>&1

if [ $? != 0 ]
then
	echo "Please install dig command..."
	exit 1
fi

ip=$(dig +short myip.opendns.com @resolver1.opendns.com)

echo "Your public IP is: $ip"
