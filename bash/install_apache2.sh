#!/bin/bash

if [ $(whoami) != "root" ]
then
        echo "Please run with sudo..."
fi

#Update
update=$(sudo apt update >/dev/null 2>&1)
if [ $? != 0 ]
then
        echo "An error has occured"
fi


if [ $(which apache2) ]
then
        echo "Apache2 already installed"
else
        sudo apt install apache2

fi

if [ $(which ufw) ]
then
        sudo ufw allow 'Apache Full'
        sudo ufw status
        sleep 4
fi

apache2_status=$(systemctl status apache2)
if [ $? != 0 ]
then
        echo "An error has occured"
fi

sleep 2
clear
echo "Installation passed..."
sleep 1
echo "You can visit your new site at $(hostname -I)"

