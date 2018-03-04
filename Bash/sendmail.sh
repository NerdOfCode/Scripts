#!/bin/bash
#Author: NerdOfCode
#Purpose: To send mail from CLI
#Tested on Ubuntu 17.04
#Tested on: Antergos (Arch based)

#for saving the mail temporarily
random=$RANDOM

#Mail related functionality
mail=$(which mailutils >/dev/null 2>&1)
mail_status=$?
check_ser=$(which postfix >/dev/null 2>&1)
check_ser_status=$?
temp_d=/tmp/
mail_ext=.mail

echo -e "THIS PROGRAM IS OF NO WARRANTY!!! I AM NOT RESPONSIBLE FOR ANY MISUSES OF IT. THIS SCRIPT IS SOLELY FOR EDUCATIONAL PURPOSES \n \n"
sleep 5
clear

#Check if user meets requirements
if [ $mail_status != 0 ]
then
	echo "I am very sorry... But I require the mailutils package to sendmail"
	exit 1
fi

if [ $check_ser_status != 0 ]
then
	echo "I am very sorry... But I require the Postfix service"
	exit 1
fi

read -p "Enter from address: " from 
read -p "Enter receiving address: " receive
read -p "Enter subject: " subject
echo "Enter message in one second: "
sleep 2
#Open a file to edit the body of a message
nano $temp_d$random$mail_ext
body=$(cat $temp_d$random$mail_ext)

read -p "Ready to send? (yes): " send

if [ $send == "yes" ]
then
	echo $body | mail -aFrom:$from -s "$subject" $receive
	exit 0
else
	echo "The body of your message was stored here: $temp_d$random$mail_ext"
	exit 0
fi

