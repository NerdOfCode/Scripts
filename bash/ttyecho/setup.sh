#!/bin/bash
#Author: NerdOfCode

if [ $(which ttyecho) ]
then
  echo "ttyecho is already installed. Would you like to reinstall? (y/n)"
  read -p "Response: " response
  if [ $response == "n" ]
  then
    exit 0
  fi
fi

if [ ! $(which gcc) ]
then
  echo "Gcc not installed... Attempting to install"
  sudo apt install gcc
fi

if [ ! -z ttyecho.c ]
then
  gcc ttyecho.c
else
  echo "ttyecho.c not found... Exiting..."
  exit 1
fi


echo "Would you like to make the ttyecho command global? (y/n)"
read -p "Response: " response

if [ $response == "y" ]
then
  sudo mv a.out /usr/bin/ttyecho
fi


echo "Success!!!"
exit 0
