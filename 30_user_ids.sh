 <<comments
   
  Author: Duane Royed Dsilva
  Date: 25/10/19
  Description:Count the number of users with user IDs between 500 and 10000 on the system
  Input: ./users.sh
  Output: 2
   
comments

#!/bin/bash


count=0              #initialize count to 0

array=(`cut -d : -f3 /etc/passwd`)   #store 3rd field of etc/passwd file into an array

if [ $# -eq 0 ]                     
#when no arguments are passed through command line execute the default case that is print the count of user ids from 500 to 100000
then

for i in `seq 1 $((${#array[@]} - 1 ))`  #loop to count from 0 to arraylength - 1
do
  
    if [ ${array[$i]} -ge '500' -a ${array[$i]} -le '100000' ]  #default condition
    then
	count=$(($count + 1))                                   #increment the count variable by 1 if conditionn is satisfied

    fi


done

echo "Total count of user IDs between 500 and 100000 is $count"

elif [ $# -eq 1 -o $# -gt 2 ]
then
    echo "Error: Please pass 2 arguments"


else                                                 
#when arguments are passed through command line print the count of user ids from argument1 to argument2

for i in `seq 1 $((${#array[@]} - 1 ))`  
do
  
    if [ ${array[$i]} -ge $1 -a ${array[$i]} -le $2 ] #condition to check if userID is between the range specified by passsing the arguments
    then
	count=$(($count + 1))                         #increment count if above condition is satisfied

    fi


done

echo "Total count of user IDs between $1 and $2 is $count"


fi
