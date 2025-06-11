#!/bin/bash

read -p "Enter a service name: " name

STATUS=$(systemctl status "$name" 2> /dev/null | grep "Active" | awk '{ print $2 }')

if [ "$STATUS" = "active" ];
then
	echo "$name is running successfully"
else
	echo "$name is not running"
	systemctl restart $name
fi

<<comment

By default, awk don't consider spaces/tabs on between the words.so, when even there is an 10 spaces have between words one and two in the file, and if we use {print 2 } it takes word two rather than spaces

2> /dev/null : It outputs only message and if it have any errors on the output, it doesnt print the output outside.

(when we run scripts without 2>/dev/null,

If the service doesn’t exist or fails, you'll see an error.

[Unit xyz.service could not be found.]

That error message will show up in the terminal and could break scripts.)
comment
