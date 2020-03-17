<<comments
   
   Author: Duane Royed Dsilva
   Date: 25/10/19
   Description:Display the longest and shortest user-names on the system. 
   Input:./ 19_largest_username.sh
   Ouput: The Longest Name is speech-dispatcher
          The Shortest Name is lp
   
comments







#!/bin/bash


array=(`cut -d ":" -f1 /etc/passwd`)               #store the first field of /etc/passwd file that is usernames in an array
array_size=${#array[@]}                            #store array length in variable array_size

for i in `seq 1 $(($array_size - 1))`              #loop which counts from 1 (2nd element of array) to array_size-1 (last element of array) 
do

    if [ ${#array[$i]} -lt ${#array[0]} ]          #checking if legth of ith element of array is less then  fisrt element of array
    then

#swapping the array elements using temp variable if condition is true such that the length of ith element of array  is smaller then length of array[0] 
       
        temp=${array[0]}
	array[0]=${array[$i]}             
	array[$i]=$temp


    elif [ ${#array[$i]} -gt ${#array[$(($array_size - 1))]} ] 
   
    #checking if length of ith element of array is greater then the length of last element of array

    then

#swapping the array elements using temp variable if condition is true such that length of the ith element of array is greater then the length of the last element of array
        
        temp=${array[$(($array_size - 1))]}              
       	array[$(($array_size - 1))]=${array[$i]}
	array[$i]=$temp

    fi
done
    echo The shortest name is ${array[0]}
    echo The longest name is ${array[$i]}

