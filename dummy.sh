#!/bin/bash

print_args() {
	echo "$1"
	echo "$2"
	echo "$3"
	echo "$#"
	echo "$@"
}


print_args "docker" "terraform" "Kubernetes"

