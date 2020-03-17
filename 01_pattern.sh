<<comments

Author: Duane Royed Dsilva
Date: 21/10/19
Description: Print a given pattern 
Input: Enter the number of lines: 4
Output: 1
	1 2
	1 2 3
	1 2 3 4
comments




#!/bin/bash


echo -n "Enter the number of lines: "		 #To print the message
read n						 #Store number entered by user in "n"

if [ $n -gt 0 ]
then
    
for i in `seq 1 $n`			         #To increment row from 1 to n
do
   for j in `seq 1 $i`				 #To increment columns from 1 to i
   do
       echo -n "$j "				 #Print the value of j variable
   done
   echo
done

else
    echo "Error: Enter positive numbers only"	 #If n is less then and equal to 0 print error message

fi
