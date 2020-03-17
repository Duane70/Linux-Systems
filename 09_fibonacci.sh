<<comments
     
     Author: Duane Royed Dsilva
     Date: 22/10/19
     Description: Generate fibonacci numbers less then n
     Input: a number input as commmand line argument
     Output: to print fibonacci numbers less and equal to input number


comments

#!/bin/bash




if [ $# -eq 0 ]					#If total number of arguments is equal to 0 then print error message				    
then
    echo "Error: No arguments passed"

elif [ $1 -lt 0 ]				#If the argument is a negative number print error message
then
    echo "Please enter only positive numbers"	

else


    T1=0					#Initialise T1=0
    T2=1					#Initialise T2=1

  echo $T1					#Print T1 and T2
  echo $T2

  
  while [ $((T1 + T2)) -le $1 ]			#While sum of T! and T2 is less equal to entered number (argument) execute the loop
 
  do			

  sum=$((T1 + T2))				#Store sum of T1 and T2 in a variable sum
  echo $sum					#Print value of sum
  T1=$T2					#Interchange value of variables to get the next term
  T2=$sum

 
  done

  fi
