<<comments

Author: Duane Royed Dsilva
Date: 21/10/19
Description: Print a given pattern 
Input: Enter the number: 4
Output: 1
	2 3
	4 5 6	
	7 8 9 10

comments


#!/bin/bash

echo -n "Enter the number: "			 #Print the message
read n						 #Store the number entered by user in n

if [ $n -gt 0 ]
then

sum=0						 #Initialize sum to 0

for i in `seq 1 $n`				 #To increment rows from 1 to n 
do
    for j in `seq 1 $i`				 #To increment the column fromm 1 to i
    do
    sum=$((sum+1))				 #increment value of sum by 1 
    echo -n "$sum "				 #print value of sum
done
echo						 #To go to next line
done

else
    echo "Error: Enter only positive numbers"    #If n is less then equal to 0 then print error messsage
fi
