#!/bin/bash

if [ $(whoami) != "root" ]
then
	echo "Please run me as root or with sudo."
	exit 1
fi

if [ $# -gt 0 ]
then
	echo "I accept no arguements..."
	echo "Simply run, chmod +x kill_window.sh"
	echo "Then, sudo ./kill_window.sh"
	exit 0
fi

xdotool_test=$(which xdotool)
if [ $? != 0 ]
then
	echo "Please install xdotool"
	exit 1
fi

echo "Select window to kill"

pid=$(xdotool selectwindow getwindowpid)

echo "Killing PID: $pid"

sudo kill -9 $pid
