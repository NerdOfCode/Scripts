#!/bin/bash
#Author: NerdOfCode

editor="nano"

clear
read -p "Enter Git Name: " git_name
read -p "Enter Git User Email: " git_mail
read -p "Enter editor(nano default): " git_edit

if [ -z $git_edit ]
then
        git_edit='nano'
fi


git config --global user.name "$git_name"
git config --global user.email $git_mail
git config --global core.editor $git_edit

sleep 1

echo -e "Your git config: \n \n"
git config --list --show-origin
