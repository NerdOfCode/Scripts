#!/bin/bash

##################################
#Author: NerdOfCode
#Purpose: Tells user when a file is changed from checksums...
#Updated: 2/28/18
##################################

storage_file=".file_listings"


check_required_tools(){

	if [ ! $(which sum) ]
	then
		echo "Please install the 'sum' command and then re-run..."
		exit 1
	fi

  if [ ! $(which jq) ]
  then
    echo "Please install the 'jq' command... and re-run"
    exit 1
  fi

  return 0
}

file_listings(){
  count=0
  touch ~/$storage_file
  #Start json formatting
  echo -e "{\n" >> ~/$storage_file

  for file in "$(pwd)"/*.*
  do
      if [ $(file $file | grep "directory") ]
      then
        break
      fi
      sum="$(sum $file | awk -F ' ' '{print $1}')"
      echo -e "'file${count}': $file,\n" >> ~/$storage_file
      echo -e "'sum${count}': $sum," >> ~/$storage_file
      count=$((count=count+1))
  done

  echo -e "\n}" >> ~/$storage_file
}

check_files(){
  for file in "$(pwd)"/*.*
  do

      sum="$(sum $file | awk -F ' ' '{print $1}')"

      if ! grep -q "$sum" ~/"$storage_file"
      then
        echo "Modified File: $file"
      fi

  done
}

#Check to see if user has required tools
check_required_tools
#Check to see if file listings already exists and if not create
if [ ! -f ~/$storage_file ]
then
    echo "Creating file listing file at: ~/$storage_file"
    file_listings
fi

read -p "Would you like to (c)heck for a file change or (u)pdate file records: " choice

if [ $choice == "u" ]
then
  rm ~/$storage_file
  file_listings
else
  check_files
fi
