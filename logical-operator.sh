#!/bin/bash

read -p "Enter a first number: " firstnum
read -p "Enter a second number: " secondnum

if [[ $firstnum -gt 60  && $secondnum -lt 80 ]]     #Advanced

#or

if [ $firstnum -gt 60 ] && [ $secondnum -lt 80 ]
then
	echo "It is And operator"
else
	echo "It is Not a And operator"
fi



#Not operator

if ! [ $firstnum -gt 60 ]
then
        echo "It is Not operator"
fi



<<comment
&&         :  AND operator
||         :  OR operator
!          :  NOT operator
comment 
