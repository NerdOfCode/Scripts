#!/bin/bash

# List connected OpenVPN Users and display basic details about their account
# Author: NerdOfCode
# Contact: nerdofcode@nerdofcode.com

:'
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at
  http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
':

clear

# Verify all needed software is installed
tools_installed() {
	if [[ ! -d "/etc/openvpn/" ]]
	then
		echo "OpenVPN is NOT installed!"
		exit 1
	fi
	if [[ ! $(command -v "inotifywait") ]]
	then
		echo "Please install inotify-tools and re-run!"
		exit 1
	fi
}

display_user() {
	# DO a little math and convert bytes-related info to megabyte units
	((bytes_received = $4 / (1024 * 1024)))
	((bytes_sent = $5 / (1024 * 1024)))
	echo -e	"""
		User: $1
		\tInternal IP: $2
		\tOriginal IP: $3
		\tBytes Received: $bytes_received MB
		\tBytes Sent: $bytes_sent MB
	"""
}

if [[ $EUID -ne 0 ]]
then
	echo "Sorry, but this script must be run as root!"
	exit 1
fi

tools_installed

connection_details=$(cat /etc/openvpn/server/openvpn-status.log | grep "^CLIENT_LIST,")
IFS=$'\n'

echo "CONNECTED USERS:"
for user in $connection_details
do
	username=$(echo $user | awk -F ',' '{print $2}')
	original_ip=$(echo $user | awk -F ',' '{print $3}' | sed 's/:.*//g')
	internal_ip=$(echo $user | awk -F ',' '{print $4}')
	bytes_received=$(echo $user | awk -F ',' '{print $6}')
	bytes_sent=$(echo $user | awk -F ',' '{print $7}')

	display_user "$username" "$internal_ip" "$original_ip" "$bytes_received" "$bytes_sent"
done

while inotifywait -e modify /etc/openvpn/server/openvpn-status.log; do bash $0; done
