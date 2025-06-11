#!/bin/bash

echo "Date  : $(date)"  >> file.txt
echo "Uptime: $(uptime -p)" >> file.txt
echo "------------------------------"  >> file.txt

<<comment

uptime -p  : shows machine running time 

comment
