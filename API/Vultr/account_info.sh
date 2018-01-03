#!/bin/bash

#Please make sure you have API enabled under account in Vultr settings

#Change variables below
account_storage=".storage"
api_storage=".vultr_api_key"

#Exit codes:
#0 --> Success
#1 --> Missing software


#Check if the required commands are installed
if [ ! $(which jq) ]
then
        echo  "Please install jq via apt"
        exit 1
fi

if [ ! $(which curl) ]
then
        echo "Please install Curl via apt"
        exit 1
fi

if [ ! -f $api_storage ]
then
        read -p "Please enter Vultr API key: " api_key
        echo $api_key > $api_storage
else
        api_key=$(cat $api_storage)
fi



#Get the JSON output and store it to $account_storage
curl  --silent -H "API-Key: $api_key" https://api.vultr.com/v1/account/info > $account_storage


#Start organizing the information
info=$(cat $account_storage)

balance=$(echo $info | jq '.balance')

pending_charges=$(echo $info | jq '.pending_charges')

last_pay_date=$(echo $info | jq '.last_payment_date')

last_pay_ammount=$(echo $info | jq '.last_payment_amount')


#Actually release the info below
echo "Balance: $balance" | tr -d \"

echo "Pending Charges: $pending_charges" | tr -d \"

echo "Last Payment Date: $last_pay_date" | tr -d \"

echo "Last Payment Ammount: $last_pay_ammount" | tr -d \"

