#!/bin/bash

read -p "Enter a name: " name
read -p "Enter a email: " email
DATE="$(date)"

echo ""$name","$email" ["$DATE"]" >> users.csv
echo "Saved on a users.CSV file!!"
