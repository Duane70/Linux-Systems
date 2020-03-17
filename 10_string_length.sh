<<comments

Author: Duane Royed Dsilva
Date: 22/10/19
Description: Print length of each and every string entered using CLA 
Input: Enter the strings using CLA
Output: ./11_string_length.sh hello hai how are you ?
Length of string (hello) – 5
Length of string (hai) – 3
Length of string (how) – 3
Length of string (are) – 3
Length of string (you) – 3
Length of string (?)   - 1




comments


#!/bin/bash

if [ $# -eq 0 ]						    #If total number of arguments is equal to 0 then print error message
then
    echo "Error: No arguments passed!"

else

    array=($@)						    #Store all the arguments in an array

    
    for j in `seq 0 $(($# -1))`	     
   
       	#run the loop from 0 to total arguments - 1 (to itterat the loop with respect to indices of the array) 
    
    
    do

	echo "length of string (${array[j]}) -${#array[$j]}" 
	
	#Print the array elements and their lengths with respect to the array indices stored in j
    
    done
fi


