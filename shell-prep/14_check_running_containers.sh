#!/bin/bash

echo "Running Docker Containers:"
echo "---------------------------"

# Loop through each container ID
for container_id in $(docker ps -q); do
  # Get container name
  name=$(docker inspect --format='{{.Name}}' "$container_id")
  
  # Get container status
  status=$(docker inspect --format='{{.State.Status}} ({{.State.Running}}) {{.State.StartedAt}}' "$container_id")
  
  # Print container name and status
  echo "Name: $name"
  echo "Status: $status"
  echo "---------------------------"
done


<<comment
-q     :  -q is used to get the running docker container id's.
comment







#Without loop


if [ "$(whoami)" != "root" ];
then
	echo "Invalid user! change into Root user."
else
	docker ps | grep -v 'CONTAINER ID' | awk '{ print $7, $8, $9, $NF }'
fi



<<comment
docker ps --format "{{.Status}} {{.Names}}"  : We can use this also for get this same output

"NF"  : Used to print the last value
comment
