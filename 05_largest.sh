<<comments
   
   Author: Duane Royed Dsilva
   Date: 22/10/19
   Description: find the largest number entered in command line
   Input: numbers entered through command line input
   Output: Print the largest number


comments




#!/bin/bash


if [ $# -eq 0 ]                           #If total number of arguments is 0 then print error message
then

    echo "Error: No argument passed !!"

else
    
    array=($@)                            #Store all the arguments in an array

max=${array}				  #initialise variable max to the first element of the array  

 for i in ${array[@]}			  #i will take value of all the array elements one by one
 
 do
     if [ $i -gt $max ]			  #If the ith element of array is greater then variable max  
     then
	 max=$i				  #Then store the ith element of array in max	    



    fi                                    #end of if loop
done					  #end of for loop
     
echo "The largest number is: $max"        #After excecuting the for loop print the value of variable max
 
fi
