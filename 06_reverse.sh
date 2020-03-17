<<comments
     
     Author: Duane Royed Dsilva
     Date: 22/10/19
     Description: find the reverse of the number entered in command line
     Input: number is enetered through command line input eg 456
     Output: to print the reverse of the number eg 654


comments


#!/bin/bash

if [ $# -eq 0 ]				    #If total number od arguments is 0 then print error message
then
    echo "Error: No arguments passed !!"

elif [ $(($1 / 10)) -eq 0 ]		    #If entered argument is a single digit number then print error message
then
    echo "Error: Pass a multi digit number"

else

temp=$1					    #Store the number entered by user in a variable temp
rev=0					    #Initialize a variable rev (reverse) to 0
  
  while [ $temp -ne 0 ]			    #While temp is not equal to 0 execute the while loop

  do

     rem=$((temp % 10))		            #Isolate the last digit of the entered number 
     rev=$((rev * 10 + rem))		    #Append the last digit to rev (reverse) variable
     temp=$((temp / 10))		    #Remove last digit from number

  done
 
  echo "Reversed number: $rev"              #After execution of while loop print the value of rev (reverse) variable

fi
