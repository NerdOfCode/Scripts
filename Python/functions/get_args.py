#Author: NerdOfCode
#Tested on Ubuntu Server 17.04
#Python v--> Works on latest 3.x version

#Documentation: I recommend importing this file then calling function 
#get_args into a variable then print the value of that variable

import sys, os, re

#For filesake purposes

######################
max_arg=10           #
arguements=[]        #
######################


#print(sys.argv[1])

def get_args():
        length=len(sys.argv)
        if length >  max_arg:
                return "Too many arguements... Goodbye"
                sys.exit(1)

        for argu in range(length):
                arguements.append(sys.argv[argu])
        if sys.argv[0]:
                del arguements[0]

        #Modify array below

        return arguements

#Example of call and printing args
values=get_args()
print(values)
