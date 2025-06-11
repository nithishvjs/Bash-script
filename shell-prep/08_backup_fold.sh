#!/bin/bash

tar -cvzf file_backup.tar.gz fold1

<<comment

-c   : used to create tar.gz file (from orginal file to 
       backup.tar.gz)
-z   : used to compress the fold/file (mandotary)
-f   : used to refer the file
-x   : used to extract the tar.gz file (from backup.tar.gz 
       to orgional file)
-t   : To see the files inside the backup.tar.gz

comment

#To extract the tar file

mkdir fold2
cp file_backup.tar.gz fold2/
cd fold2
tar -xvzf file_backup.tar.gz
