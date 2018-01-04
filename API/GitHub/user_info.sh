#!/bin/bash

#Cache directory
dir=".github_cache"

if [ ! -d ~/$dir ]
then
	mkdir ~/$dir
	echo "Cache Enabled"
	echo "To use the cache, place at least one arguement..."
	echo "Ex: ./github_api.sh cache"
fi

read -p "Enter Github Username: " user

if [ ! -f ~/$dir/$user.txt ]
then
	echo "User not cached"
	shift
fi

#Cache check
if [ $# != 1 ]
then
	curl --silent https://api.github.com/users/$user > ~/$dir/$user.txt
else
	echo "Using cache"
fi


#Shortcut
file=$(cat ~/$dir/$user.txt)

id=$(echo $file | jq '.id')
type=$(echo $file | jq '.type')
email=$(echo $file | jq '.email')
followers=$(echo $file | jq '.followers')
following=$(echo $file | jq '.following')
bio=$(echo $file | jq '.bio')
public_repos=$(echo $file | jq '.public_repos')
account_created=$(echo $file | jq '.created_at')
account_created=$(echo $account_created | awk -F "T" '{print $1}' | tr -d \")


echo "Id: $id"
echo "Type: $type"

if [ $email != "null" ]
then
	echo "Email: $email"
fi

echo "Followers: $followers"
echo "Following: $following"
echo "Public Repos: $public_repos"
echo "Bio: $bio"
echo "Account created on: $account_created"
