<<comments
   
   Author: Duane Royed Dsilva
   Date: 30/10/19
   Description: generating random 8-character passwords including alphanumeric characters.
   Input: ./20_random_password.sh
   Output: nH@Rh0Pv
           O8ug&HfD
	   o0IUJ$f
           wx!Kox3U
           i3?BkomA
           S89R%OA3
           #e3v8PzS
           d?F8TEo6
           Lrb-qvl9
           T!ilf1C5
   
comments


#!/bin/bash

for i in `seq 1 10`                              #run the loops 10 times to get 10 rows
do

cat /dev/urandom | tr -dc [:print:] | head -c 8  #get only printable characters from /dev/urandom file by using complement command
echo

done

