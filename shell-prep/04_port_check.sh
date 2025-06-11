#!/bin/bash

read -p "Enter a name: " name
read -p "Enter a port number: " portnum

NC=$(nc -zv "$name" "$portnum" 2>&1 | awk '{ print $NF }')

myfun() {
	if [ "$NC" = 'succeeded!' ];
	then
		echo "Port number is opened"
	else
		echo "Port number is not opened"
	fi
}

myfun
