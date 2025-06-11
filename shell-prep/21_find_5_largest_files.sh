#!/bin/bash

read -p "Enter a directory name: " dir

find "$dir" -type f -exec du -h {} + | sort -rh | head -n 5

<<comment

{} :  is replaced by the file name found

+  :  allows batch processing for performance (better than \;)

-r :  Reverse a order

-h :  Make it in a human readable format

comment
