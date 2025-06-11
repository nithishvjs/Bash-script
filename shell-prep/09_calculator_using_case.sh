#!/bin/bash

read -p "Enter a first number : " num1
read -p "Enter a second number: " num2

echo "choose any one: add | sub | mul | div"

read process

case "$process" in
	add)
	        echo "$(( $num1 + $num2 ))"
	        ;;
	sub)
		echo "$(( $num1 - $num2 ))"
		;;
	mul)
		echo "$(( $num1 * $num2 ))"
		;;
	div)
		echo "$(( $num1 / $num2 ))"
		;;
	*)
		echo "Invalid operation. Please choose add, sub, mul, div."
		;;
esac

