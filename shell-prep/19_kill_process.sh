#!/bin/bash

read -p "Enter a file name: " name

pkill -9 "$name"

<<comment

To check processes,

ps aux  : to check the processes

To kill the processes,

kill <PID>  : To kill the processes using PID

To kill the processes using process name,

pkill <process name> : To kill the process using process name

To force kill,

pkill -9 <process name>

comment
