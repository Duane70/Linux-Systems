#!/bin/bash


echo enter pass
read -t 5 s

if [ -z $s ]
then
    echo "Time out"
else 

   if [[ ${#s} -ge 3 && "$s" == *[[:lower:]]* ]]
   then 
    echo ok
    echo completed in $SECONDS
      else
      echo invalid
  fi

 fi

