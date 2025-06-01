#!/bin/bash

add() {
	num1=5
	num2=10
	echo "sum: $((num1 + num2))"
}

add

#To check the package is installed by passing argument

#!/bin/bash

check_package() {
    if dpkg -s "$1" &> /dev/null; then
        echo "$1 is installed."
    else
        echo "$1 is NOT installed."
    fi
}

check_package curl

#To print the passing arguments through loop

print_args() {
    for arg in "$@"; do
        echo "Arg: $arg"
    done
}

print_args "Docker" "Kubernetes" "Terraform"


<<comment
$@    : To print all the input arguments
$#    : To print the number of input arguments
$1 $2 : When we give first argument while call it takes first as one and 
        second argument as two
comment
