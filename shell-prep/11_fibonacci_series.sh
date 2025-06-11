#!/bin/bash

# Define the recursive Fibonacci function
fibonacci() {
    local n=$1

    if [ "$n" -le 0 ]; then
        echo 0
    elif [ "$n" -eq 1 ]; then
        echo 1
    else
        local a=$(fibonacci $((n - 1)))
        local b=$(fibonacci $((n - 2)))
        echo $((a + b))
    fi
}

# Prompt user for input
read -p "Enter the position (n): " num

# Call the function and print the result
result=$(fibonacci "$num")
echo "Fibonacci number at position $num is $result"

<<comment
local  : local is used inside a function to declare variables that are only visible within that function.
comment
