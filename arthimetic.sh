#!/bin/bash

read -p "Enter a X value: " x
read -p "Enter a Y value: " y

#To add the two numbers

let a=x+y

#or

((a=x+y))

echo "Output of add the num is: " $a

#To multiply the two value

let b=x*y

echo "Output of multiply the num is: " $b

#To increment the number

let x++

echo $x
