 <<comments
   
  Author: Duane Royed Dsilva
  Date: 31/10/19
  Description: lists the contents of each of the directories
  Input: ./28_output_ls.sh
  Output: Assignments Classwork
   
comments

#!/bin/bash


if [ $# -eq 0 ]      #check if no arguments are passed
then
    echo *           #display all the contents of the current directory

else


    for i in $@      #loop for displaying the files in directories passed as argument
    do

	if [ ! -d $i ]  #check if directory is not found
	then 
	    echo "Cannot access $i. No such file or directory"
	    break
	else
	    echo
	    cd $i     #change directory to the directory name stored in i
	    pwd
	    echo
	    echo *    #command to display contents of the directory
	    echo 

	fi
    done
fi
