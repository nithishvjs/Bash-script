#!/bin/bash

myvar="Hello World, "
str2="I'm Nithish!!"

echo ${#myvar}             #To print the length of the value

echo ${myvar^^}            #To print all on the upper case
 
echo ${myvar,,}            #To print all on the lower case

echo ${myvar/World/Buddy}  #To replace the value

echo ${myvar:6:11}         #To slice the value

echo "$myvar $str2"        #To combine the two strings 
