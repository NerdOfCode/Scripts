
#!/bin/bash
#Supports: Arch Linux and Debian Based Distro
#Notes:
#System variable --> Basically used to install apache2

if [ $(whoami) != "root" ]
then
        echo "Please run with sudo..."
	exit 1
fi

#Update the system via apt
apt_check=$(which apt >/dev/null 2>&1)

if [ $? == 0 ]
then
	sudo apt update
	sudo apt upgrade
	system="sudo apt install apache2"
else
	status=-1
fi

#Update the system via Pacman
pacman_check=$(which pacman)

if [ $? == 0 ]
then
	sudo pacman -Syy
	sudo pacman -Su
	system="sudo pacman -S apache"
	#If os is arch, then dont use ufw due to complications
	os="arch"
else
	status=-2
fi

if [ $status == -2 ]
then
	echo "Unsupported system... Feel free to improve this script and then submit it to https://github.com/NerdOfCode/Scripts/blob/master/bash/install_apache2.sh"
	exit 1
fi



apache2_check=$(which apache2 >/dev/null 2>&1)
if [ $? == 0 ]
then
	echo "Apache is already installed"
else
	$system
	ran=1
fi

apache_check=$(which apache >/dev/null 2>&1)
if [ $? == 0 ]
then
        echo "Apache already installed"
else if [ $ran != 1 ]
then
        $system
fi
  fi
clear

ufw_check=$(which ufw >/dev/null 2>&1)

if [ $? == 0 ] && [ $os != "arch" ]
then
	#Allow commonly used ports with apache
        sudo ufw allow 80 
	sudo ufw allow 443

        sudo ufw status
        sleep 4
	sudo service ufw start
else
	
	echo "Note: Use ufw for easier firewall configuration than iptables"
fi


sleep 2
clear

#Hostame -I only works on Debian based...
if [ $os != "arch" ]
then
	echo "Congratulations!!!"
	echo "You can visit your new site at $(hostname -I)"
	exit 0
fi
exit 0
