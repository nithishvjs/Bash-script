#!/bin/bash

for file in *.conf
do
	sed -i 's/dev/prod/g' "$file"
done

<<command
sed : Sed is used to replace the values inside the file without opening the file manually

-i : when we used without -i it prints the output after the shell script is completed.

without (-i),

root@NithishAkash:/mnt/d/shell-prep# ./02_replace_dev_to_prod.sh
prod prod prod prod prod prod
prod prod prod prod prod prod
command
