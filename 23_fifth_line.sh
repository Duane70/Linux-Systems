<<comments
  
Author: Duane Royed Dsilva
Date: 21/10/19
Description: Print the 5th line of a file
Input: ./25_print_fifth_line file.txt
Output:Fifth line of file.txt is line 5 
  
comments

#!/bin/bash

if [ $# -eq 0 ]                     #checking if argument is passed in command line
then
    echo "Please pass file name through commmand line"

elif [ ! -f $1 ]                    #checking if file exist or not            
then
    echo "File does not exist"

elif [ `cat $1 | wc -l` -lt 5 ]	    #checking if file contains 5 lines or not
then
    echo "$1 is having only `cat $1 | wc -l` lines so cannot print 5th line"
    
else

    cat $1 | head -5 | tail -1      #getting 5th line of the file using head and tail command  

fi
