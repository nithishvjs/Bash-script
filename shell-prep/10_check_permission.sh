#!/bin/bash

read -p "Enter a file name: " file

if [ -e "$file" ];
then
	if [ -r "$file" ];
	then
		echo "File has read permission."
	fi
	if [ -w "$file" ];
	then
		echo "File has write permission"
	fi
	if [ -x "$file" ];
	then
		echo "File has execute permission"
	fi
else
	echo "File doesn't exist"
fi
