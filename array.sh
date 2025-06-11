#!/bin/bash

#set -x is used for print the commands on the output

#set -x






MyArray=(1 2 3 4 Nithi 'jenis is deva boyfrnd')

#To print all the values in MyArray

echo ${MyArray[*]}

#To print the particular value on MyArray

echo ${MyArray[3]}

#To print the length of the array

echo ${#MyArray[*]}

#To add the values in the array

MyArray+=(5 6 7)

echo ${MyArray[*]}


#To get the specific range of values in array

echo ${MyArray[*]:2}  

<<comment
It prints from the index 2 and print
Output:  3 4 Nithi 'jenis is deva brother'
comment


#To get the specific range of values in array

echo ${MyArray[@]:1:2}      #We can use either * are @ for select the values

<<comment
It prints from the index 2 and print only 2 numbers
Output:  2 3
comment


#To declare a key-value in the array

declare -A MyArray2     #Mandotary

MyArray2=([name]=Nithish [age]=20 [major]=B.E)

#To print the particular key-value 

echo ${MyArray2[age]}
echo ${MyArray2[name]}

#To print the number of index per values

echo ${!MyArray[@]} 

#To remove the particular value in array

unset MyArray[1]

echo ${MyArray[@]}
