#!/bin/bash

###########################################################
##Purpose: This script gets current swap and memory usage
##Updated: 2/21/18
##Tested on: Antergos
##What actually happens under the hood? 
###Basically glorifies the "free -h" command###
############################################################

input=$(free -h)

###RAM related variables
memory_max=$(echo "$input" | grep "Mem: " | awk -F " " '{print $2}')
used_memory=$(echo "$input" | grep "Mem: " | awk -F " " '{print $3}')
shared_memory=$(echo "$input" | grep "Mem: " | awk -F " " '{print $5}')
available_memory=$(echo "$input" | grep "Mem: " | awk -F " " '{print $7}')

###SWAP related variables
swap_max=$(echo "$input" | grep "Swap: " | awk -F " " '{print $2}')
swap_used=$(echo "$input" | grep "Swap: " | awk -F " " '{print $3}')

##Actually calculate swap free instead of grabbing for efficiency
##Note: Need to manually remove identifiers so they dont mess up arithmetic
swap_max2=$(echo $swap_max | tr -d "G")
swap_used2=$(echo $swap_used | tr -d "B")
swap_free=$(echo "$swap_max2 - $swap_used2" | bc)

print_values () {
	echo "Max Memory: $memory_max"
	echo "Used Memory: $used_memory + $shared_memory"
	echo "Available Memory: $available_memory"
	echo "Swap Max: $swap_max"
	echo "Swap Used: $swap_used"
	echo "Swap Free: ${swap_free}G"
}

print_values
