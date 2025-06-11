#!/bin/bash

count=10

until [ $count -eq 0 ]
do
	echo "Counter is $count"
	let count--
done


#To find the file exist in machine

file="done.txt"
until [ -f "$file" ]
do
  echo "Waiting for $file to appear..."
  sleep 2
done

echo "$file is now present!"


#To check the password is correct or incorrect

correct="nithi17"
input=""

until [ "$input" = "$correct" ]
do
  read -sp "Enter password: " input
done

echo "Access granted!"
