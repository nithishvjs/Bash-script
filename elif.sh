#!/bin/bash

read -p "Enter your mark: " mark

if [ $mark -ge 80 ]
then
	echo "You are A grade"
elif [ $mark -gt 40 ]
then
	echo "You are B grade"
elif [ $mark -le 40 ]
then
	echo "You are fail"
fi
