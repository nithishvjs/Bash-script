#!/bin/bash

read num
m=0

if [ $num -le 1 ];
then
	m=1
else
	i=2
	while [ $i -lt $num ];
	do
		if [ $((num % i)) -eq 0 ]
		then
			m=1
		fi
	let i++
	done
fi

RESULT=$([ "$m" -eq 1 ] && echo "Not a prime" || echo "is prime")

echo "$RESULT"
