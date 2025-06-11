#!/bin/bash

if [ "$(whoami)" = "root" ]
then
	echo "You are a Root user"
else
	echo "You are Not a Root user"
fi
