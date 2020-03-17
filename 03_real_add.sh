<<comments

Author: Duane Royed Dsilva
Date: 21/10/19
Description: Add 2 real numbers
Input: Enter 2 numbers: 1.5 1.5
Output: sum=3

comments



#!/bin/bash

echo -n "Enter two numbers for addition: " #Print the message
read  num1 num2                            #Store numbers entered by user is num1 and num2

sum=$(echo "$num1+$num2"| bc)		   #Piping the addition of 2 numbers to basic calculator and storing the result in sum 
echo "Sum= $sum"			   #Print the value of sum

