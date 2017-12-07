#!/bin/bash


#Change variables below to your likings....

#For curl, hides download progress bar
silent="--silent"



if [ ! $(which nslookup) ]
then
        echo "Please install nslookup..."
        exit 1 
fi

if [ ! $(which curl) ]
then
        echo "Please install Curl..."
        exit 1
fi

if [ -z $1 ]
then
        read -p "Enter ip: " ip
else
        ip=$1
fi
org=$(curl $silent https://ipapi.co/$ip/org/)
city=$(curl $silent https://ipapi.co/$ip/city)
country=$(curl $silent https://ipapi.co/$ip/country)

echo "ISP: $org"
echo "City: $city"
echo "Country: $country"
exit 0
