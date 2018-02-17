#!/bin/bash
#Purpose: Download and install Go...
#Built on: Arch Linux 2/17/18
#Note: If you're going to use this installation script, I recommand using Bash

if [ $(whoami) != 'root' ]
then
    echo "Please run this script as root..."
    exit 1
fi

latest_version="https://dl.google.com/go/go1.10.linux-amd64.tar.gz"
temp_dir=".temp_go"
file_name="go1.10.linux-amd64.tar.gz"
export_file="/home/$SUDO_USER/.bash_profile"


#check if the temp_dir exists

if [ -d $temp_dir ]
then
    echo "Please remove $temp_dir directory"
    exit 1
else
    mkdir $temp_dir
fi

cd $temp_dir

wget $latest_version

sudo tar -C /usr/local -xzf $file_name

echo "" >> $export_file
echo "#Added by NerdOfCode's Go installation script#" >> $export_file
echo 'export PATH=$PATH:/usr/local/go/bin' >> $export_file
echo "##Done##" >> $export_file
echo "" >> $export_file

source $export_file

exit 0
