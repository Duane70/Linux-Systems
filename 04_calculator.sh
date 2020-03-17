<<comments

Author: Duane Royed Dsilva
Date: 21/10/19
Description: pass input using command line
Input: 2+5 (command line argument input)
Output: 7

comments



#!/bin/bash

if [ $# -eq 0 ]                                           #If total number of aruments in command line is 0
then
    echo "rror: Please pass argumemts in command line!"

elif [ $# -eq 3 -o $# -eq 2 ]                             #If total number of arguments is equal to 3 or 2

then

    case $2 in						  #Case for argument 2
	
	+)						  #Case1_addition

	    sum=`echo $1 $2 $3 | bc` 
	     echo = $sum
	    ;;
    
	-)						  #Case2_subtraction

	    sub=`echo $1 $2 $3 | bc` 
	     echo = $sub
	    ;;

	/)					          #Case3_divison

	    div=`echo "scale=2; $1 $2 $3" | bc` 
	     echo = $div
	    ;;

	%)						  #Case4_modulus
	    
	    mod=`echo $1 $2 $3 | bc` 
	     echo = $mod
	    ;;

	x)						  #Case5_multiplication
	  
	    mul=`echo "$1 * $3" | bc` 
	     echo = $mul
	    ;;

	*)					          #Default_case
	
	    echo "Error:Please pass 3 arguments"
            echo "Usage:./05_arithmatic_calc 2.3 + 6.7"	  #Print this line if operator is missing 
	    ;;
	
	esac

	
fi


