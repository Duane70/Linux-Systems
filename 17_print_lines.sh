<<comments
   
  Author: Duane Royed Dsilva
  Date: 25/10/19
  Description:
  Input: /18_print_lines.sh 5 3 myfile.txt
  Output: line number 5
          line number 6
          line number 7
   
comments

#!/bin/bash

var=$( wc -l $3 | tr -d [.a-z] )  #var holds total number of lines in the file

var2=$(( $1 + $2 ))    #var2 holds the sum of arg1 and arg2

if [ $# -lt 3 ]        #check if number of arguments passed is less then 3
then
    echo "Error: Arguments missing"
    echo "Usage: ./file_filter.sh start_line uptoline"
    echo "For example ./20_file_filter.sh 5 5 <file>"


elif [ $1 -lt $var ]   #check if starting line to be printed is less then total number of lines
then

   
    head -$(($1 + $2 -1)) $3 | tail -$2  #to print lines starting from $1 till $2
     

elif [ $1 -ge $var -a $2 -ge 1 ]
then
    echo Error: You have entered line number exceeding total number of lines in file

 
fi

