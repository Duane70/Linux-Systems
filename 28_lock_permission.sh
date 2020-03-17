 <<comments
   
  Author: Duane Royed Dsilva
  Date:31/10/19
  Description: 
  Input: ./29_lock_permissions.sh Dir/
  Output: Before locking
          total 0
          -rw-rw-r-- 1 biju biju 0 Jun
	  -rw-rw-r-- 1 biju biju 0 Jun
	  -rw-rw-r-- 1 biju biju 0 Jun
          8 12:37 D2file1
	  8 12:37 D2file2
          8 12:37 D2file3
          After locking
          total 0
          -rw------- 1 biju biju 0 Jun 8 12:37 D2file1
          -rw------- 1 biju biju 0 Jun 8 12:37 D2file2
          -rw------- 1 biju biju 0 Jun 8 12:37 D2file3
   
comments

#!/bin/bash

if [ $# -eq 0 ]    #check if argument is passed in command line
then
    echo Error: Please pass the directory name in command line 

elif [ ! -d $1 ]   #check if the directory exist or not 
then
    echo $1 does not exist


else
    echo Before locking
    ls -lh $1         #display permission before locking
    chmod -R go-rwx $1 #locking read write execute permissions of all files in the directory only for group and others
    echo After locking
    ls -lh $1         #display permissions after locking


fi



