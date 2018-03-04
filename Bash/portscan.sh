#!/bin/bash
timeout_time=.5

read -p "Enter hostname: " hostname
read -p "Enter port/ports range(Ex: 1-443 or 443): " ports

#Seperate input into two seperate variables
high=$(echo $ports| cut -f2 -d"-")
low=$(echo $ports | cut -f1 -d"-")

est_time=$(echo "$timeout_time * $high" | bc)

echo "Max Estimated Time: $est_time seconds"
#Create a for loop to scan
for (( i=$low; i <= $high; i++)){
  timeout $timeout_time nc -z -v $hostname $i >/dev/null
  if [ $? == 0 ]
  then
    echo "$i is open!"
  fi
}
exit 0
