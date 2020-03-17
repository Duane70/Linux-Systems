<<comments
   
  Author: Duane Royed Dsilva
  Date: 21/10/19
  Description: To search a user present in a system
  Input: ./32_user_present.sh xyz
  Output: xyz is present
   
comments

#!/bin/bash


if [ $# -eq 0 ]                    #check if arguments are passed 
then
    echo Error: Please pass the arguments in command line

    
else

count=0                             #initialize count to 0
array=(`cut -d : -f1 /etc/passwd`)  #store the contents of field username from the file /etc/passwd in an array



for i in `seq 0 $(( ${#array[@]} - 1 ))`   #run the loop from 0 to arraylength - 1

do

      if [ "$1" == "${array[$i]}" ]           #check if the argument and array elements match

        then
         count=1                             #if above condition is fullfilled update value of count to 1
        break
      fi
done

  if [ $count -eq 1 ]
  then

      echo $1 is present                   #if count is 1 means user is present 

  else
      echo $1 is not present               #if count is 0 then user is not present
  fi

fi




