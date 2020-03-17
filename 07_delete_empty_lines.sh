<<comments
   
   Author: Duane Royed Dsilva
   Date: 4/11/2019
   Description:   
   Input: ./07_empty_lines.sh test.txt
   Output: empty lines are deleted
   
comments




#!/bin/bash


if [ $# -eq 0 ]                        #checking if no arguments are passed
then
echo "Error: Please pass file name through command line"

elif [ $# -gt 1 ]                      #checking if more then 1 argument is passed
then
    echo "Error: Please pass only one argument"

elif [ ! -f $1 ]                       #checking if file is found or not
then
    echo " $1 not found "

else

    cat $1 | tr -d [:blank:] | sed '/^$/d' > emptylines.txt                  # -i switch is used to edit file in place, Delete all empty lines in file
    echo "Empty lines are deleted"  
    cat emptylines.txt
fi
