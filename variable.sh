#!/bin/bash

NAME1='Nithish'
HOSTNAME=$(hostname)
DATE=$(date)

echo my name is $NAME and my server name is $HOSTNAME and today date is $DATE

echo $NAME

#readonly variable used to assign as a default, cant able to change on declaring the same variable on next lines

readonly NAME='Akash'

echo $NAME

NAME='jenis'

echo $NAME
