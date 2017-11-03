#!/bin/bash
#Author: NerdOfCode

read -p "Would you like to completely (c)hange your path or (a)ppend: " opt
sleep 2
clear
read -p "Enter path: " opt1

if [ $opt == 'c' ]
then
        export PATH="$opt1"
        exit 0
else

        export PATH="$PATH:$opt1"
        exit 0
fi

exit 1
