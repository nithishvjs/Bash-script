#!/bin/bash

THRESHOLD=80

DISK=$(df -h /mnt/c | grep -vE '^Filesystem'| awk '{ print $5 }' | tr -d '%')

DATE=$(date)

if [ "$DISK" -ge "$THRESHOLD" ];
then
	echo "[ $DATE ] Disk usage is above 80%"
else
	echo 'Disk usage is under control'
fi


<<comment
/mnt/c                    : path of the file which have to check

grep -vE '^Filesystem'    :To get the only values(-v) from the filesystem output

(Without -v),
root@NithishAkash:/mnt/d/shell-prep# df -h /mnt/c | grep '^Filesystem'
Filesystem      Size  Used Avail Use% Mounted on

(With -v),
root@NithishAkash:/mnt/d/shell-prep# df -h /mnt/c | grep -v '^Filesystem'
C:\             329G  268G   61G  82% /mnt/c

tr -d                      : To delete the precentage symbol from the output
comment
