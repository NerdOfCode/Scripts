#!/bin/bash

#change the wpm in espeak
rate=120


$(which espeak >/dev/null 2>&1)

if [ $? != 0 ]
then
	echo "Please install espeak"
	exit 1
fi

time=$(date | awk -F " " '{print $4}')

read -p "Please enter sleep interval in seconds: " interval

echo "PID: $PPID"

while true
do

espeak $time -s $rate >/dev/null 2>&1

sleep $interval

done 
