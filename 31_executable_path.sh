<<comments
   
  Author: Duane Royed Dsilva
  Date: 5/11/19
  Description:For each directory in the $PATH, display the number of executable files in that directory 
  Input: ./32_executable_path.sh
  Output: Total – 2445
   
comments


#!/bin/bash


array=(`echo $PATH | tr : ' '`) #All the directories present inside PATH (environment vaiable) is stored as an array with delimeter space
total=0

for i in ${array[@]}             #loop for all the paths in array
do
count=0                          #initialize count to 0
    for j in `ls $i`             #shows the contents of the path stored in i
    do 
	if [ -x $i/$j ]          #to check if the jth file in the ith directory is exeutable or not
	then
	    count=$(($count + 1)) #increment the count by 1 if above condition is fullfilled
	
	
	

	fi

    done

	total=$(($total + $count))   #storing total count
        echo "Current dir: $i"
	echo "Current count: $count"
        echo

done


echo Total- $total
