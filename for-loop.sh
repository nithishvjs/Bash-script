#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10
do
	echo "Numbers are $i"
done



#To print the string

for j in ranjith prasanna dharun jenis naveen arul naveeth udhaya suganth
do
	echo "Lifrnds are $j"
done



#To print the numbers from 1 to 20

for p in {1..20}
do
	echo "$p"
done


#To print the values inside the file

FILE=/mnt/d/shell/file.txt

for n in $(ls $FILE)
do
	echo $n
done


#To print the files which ended with sh file name

for f in *.sh
do
  echo "Processing $f"
done


#To work like a for loop in java,python

for (( i=1; i<=5; i++ ))
do
  echo "Number: $i"
done

