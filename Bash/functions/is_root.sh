#!/bin/bash
#Purpose: Tell if the user is running script via root or not
#If script exits with exit status of 2 then no root
#If zero then root


if [ "$EUID" -ne 0 ]
then
	exit 2
fi

exit 0 

