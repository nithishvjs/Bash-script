#!/bin/bash

#To get the input from the user

echo "Enter your name: "

read name

echo "Hello, $name !!"

#To get the input with prompts on the same line

read -p "Enter your age: " age

echo "You are $age years old"

#To get the silent input like passwords

read -sp "Enter your password: " password    #-s is used for silent input

echo -e "\nPassword received."    #-e represets for make the new line enable without -e "password recieved printed on same line"

#To get the multi line input

read -p "Enter your first and last name: " first last

echo "First name: $first, Last name: $last"
