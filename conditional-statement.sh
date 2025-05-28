#!/bin/bash

read -p "Enter your mark: " mark

if [ $mark -gt 40 ]
then
	echo "You are pass!!"
else
	echo "You are fail!!"
fi



<<comment

      OPERATORS

-gt        : Greater than
-ge        : Greater than are equal to
-lt        : Less than
-le        : Less than are equal to
-eq        : Equal
-ne        : Not Equal

comment
