#!/bin/bash


if [ $# -eq 0 ]           #checking if arguments are passed 
    then
	echo "Error: Please pass arguments in command line"
	echo "Usage: ./08_operator_dependent 1234+"

else

var=$1                    #store the argument in variable var


operator=${var: -1}       #to get the operator
result=0

case $operator in

    +)
	for i in `seq 0 $((${#var} - 2))`      #loop runs from 0 till length of the variable - 2
	
	do
	    digit=${var: i: 1}                 #taking one number at a time
	    result=$((result + digit))	       #store result
	done
		echo "sum is $result"

	;;
	
    
    -)
	result=${var: 0 :1}		      #store first digit in result for subtraction
        for i in `seq 1 $((${#var} - 2))`     #loop runs from 0 till length of the variable - 2

    	do
	    digit=${var: i: 1}
	    result=$((result - digit))
	done
	echo "sub is $result"

	;;
	

    /)
	result=${var: 0 :1}

        for i in `seq 1 $((${#var} - 2))`
	
	do
	    digit=${var: i: 1}
	    result=$((result / digit))
	done
	echo "div is $result"

	;;
	

    x)
	result=${var: 0 :1}

	 for i in `seq 1 $((${#var} - 2))`
	
	do
	    digit=${var: i: 1}
	    result=$((result * digit))
	done
        	echo " mul is $result"

	;;
	



   
esac

fi
