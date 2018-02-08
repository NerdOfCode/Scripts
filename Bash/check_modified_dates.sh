#!/bin/bash

#Author: NerdOfCode

#Purpose: You can use this shell script to check the last modified
#file dates in a month!!!

#For easier use I recommend using chmod +x check_modified_dates.sh

date=0

read -p "Enter first three characters of month(ex: Dec): " month

while [[ "$date" -lt "31" ]]
do
        ((date+=1))


        ls -al | grep "$month $date"

done
