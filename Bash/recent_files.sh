#!/bin/bash

#Purpose: Display the most recently appended or altered directory or file

#Check to see if this was run yet.
run=".run_rec_file_mod01.txt"

#How many to display at once
#Please note that the default will not change, unless you change it on the line far below
count=1


if [ ! -f $run ]
then
        echo "Please run this script by using ./recent_file_mod.sh [number of files/directories to display[ex: 1]]"
        touch $run
        exit 1
fi

if [ ! -z $1 ]
then
        count=$1
else
        read -p "Enter Number of Files/Dirs to display(default: 1): " count
        if [ -z $count ]
        then
                count=1
        fi
fi

#Actually get the recent list
Recent=$(ls -t | head -n $count)


echo -e "Recent Files: \n$Recent"
