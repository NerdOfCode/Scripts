#!/bin/bash
#Author: NerdOfCode
#Purpose: Copy files or directories



if [ $(whoami) != "root" ]
then
  echo "This script may not work as expected without sudo powers"
  sleep 3
fi

read -p "Enter path to copy the files/folders: " path1
read -p "Enter path for the files/folders to be saved: " path

if [ -d $path ]
then
  echo -e "Copying files/folders: \n"
  cp -r -v $path1/* $path
  exit 0
  
else
  mkdir $path
  echo -e "Copying files/folders: \n"
  cp -r -v $path1/* $path
  exit 0
fi
