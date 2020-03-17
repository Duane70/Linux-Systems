<<comments
   
  Author: Duane Royed Dsilva
  Date: 30/10/19
  Description:use recurssive fuction to print each argument passed to the function
  Input: ./26_recursion.sh 5 2 4 1 n kj i
  Output: 5
          2
          4
          1
          n
          kj
          i

comments

#!/bin/bash

if [ $# -eq 0 ]                     #checking if arguments are passed through command line

then 
    echo "Error: Please pass arguments"

else

recur()                            
{
    
    
    array=($@)                     #storing all the arguments in an array
	
	
    echo $1                        #display the first argument

    
    
    if [ ${#array[@]} -eq 1 ]      #if total arguments eqauls 1 then exit
    then
	exit
    else

    array=(`echo ${array[@]} | cut -d " " -f1 --complement`)  #eliminating the first element of the array and updating it
    recur ${array[@]}                                         #calling the function from within
fi
}

recur $@                           #calling the function by passing all the command line arguments

fi
