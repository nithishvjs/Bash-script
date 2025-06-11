#!/bin/bash

read -p "Enter a file name: " filename

LINES=$(wc -l < "$filename")    #To print the number of lines in the file
WORDS=$(wc -w < "$filename")    #To print the number of words in the file
CHAR=$(wc -m < "$filename")     #To print the number of letters in the file

echo "$LINES"
echo "$WORDS"
echo "$CHAR"


<<comment

wc   : command is used to count the letters, words, lines and etc...

comment
