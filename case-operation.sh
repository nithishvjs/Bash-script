#!/bin/bash

read choice

case $choice in
	1) date;;
	2) pwd;;
	3) ls -l;;
esac

#To find the pattern operation

read choice

case "$choice" in
  h*) echo "Starts with h" ;;   # matches "hello", "hi", etc.
  *o) echo "Ends with o" ;;     # matches "hello", "piano", etc.
  *)  echo "No match" ;;
esac

#Real case scenerio

echo "Choose an option: start | stop | restart | status"
read user_input

case "$user_input" in
  start)
    echo "Starting the service..."
    systemctl start jenkins
    ;;
  stop)
    echo "Stopping the service..."
    systemctl stop jenkins
    ;;
  restart)
    echo "Restarting the service..."
    systemctl restart jenkins
    ;;
  status)
    echo "Checking service status..."
    systemctl status jenkins
    ;;
  *)
    echo "Invalid option. Please choose: start, stop, restart, or status."
    ;;
esac
