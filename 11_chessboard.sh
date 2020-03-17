 <<comments
   
  Author: Duane Royed Dsilva
  Date: 25/10/19
  Description: to print chess board
  Input: ./11_chessboard.sh
  Output:
   
comments


#!/bin/bash


for i in `seq 1 4`        #run the loop 4 times
do

echo -e -n "\e[0m" " "    #to make to normal colour
    

	for j in `seq 1 8`  #j holds value from 1 to 8
	do
	
	c=$((j%2))          
	
	if [ $c -eq 1 ]
	then
	    echo -e -n "\e[47m" " "     #print white box for odd number of lines from 1 to 8

	else
       
    	    echo -e -n "\e[40m" " "     #print black box for even numbers of lines from 1 to 8
	 fi
        
 done
      echo


for i in `seq 1 1`
do
echo -e -n "\e[0m" " "
    for j in `seq 1 8`
    do
	j=$((j + 1))	
	c=$((j%2))
       		if [ $c -eq 1 ]
	then
	    echo -e -n "\e[47m" " "

	else
       
    	    echo -e -n "\e[40m" " "

	 fi
        
          


    done
    echo
done

