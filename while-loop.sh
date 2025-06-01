#!/bin/bash

count=0
num=10

while [ $count -le $num ]
do
	echo "Numbers are $count"
	let count++
done



#To get the details from the file

#IMPORTANT: This is safer than using for line in $(cat file.txt) because it handles spaces and special characters properly.

while read -r line     
do
  echo "Line: $line"
done < file.txt

<<comment

while — starts a loop that will keep running as long as it successfully reads a line.

read — is a Bash command that reads a line of input (usually from a file or the user).

-r — tells read not to treat backslashes (\) as special characters (important to read raw text properly).

line — is the variable where the text of the current line will be stored.

comment


#To use for countdown timer

count=10
while [ $count -gt 0 ]
do
  echo "$count..."
  sleep 1
  ((count--))
done
echo "Time's up!"
