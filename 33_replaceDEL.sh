<<comments
   
  Author: Duane Royed Dsilva
  Date: 21/10/19
  Description: 
  Input:/33_replace<DEL>.sh main.c
  Output: #incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
   
comments

#!/bin/bash


if [ $# -eq 0 ]                            #If there are no arguments passed in command line then print error message

then
    echo "Error: Please pass file name through command line"

elif [ -f $1 ]				                #Check if file exist or not
then
    
    lines=`cat $1 | wc -l`                              #Store number of lines in the file in variable lines
    echo Total number of lines in $1 file are: $lines
    
    if [ $lines -eq 0 ]                                 #If the file is empty then print error message
    then

	echo "Error: $1 is empty file. So cant replace the strings"
    fi


    var=$(( 20 * $lines / 100 ))              #20 percent of total number of lines is stored in var
    echo var is $var

    for i in `seq 1 $var`                     #run the loop from 1 to var
    do
    
    rand=`shuf -i 1-$lines -n 1`              #Get random line nuber from total number of lines
    echo randon number is $rand

   #sed -i "${rand} i <----deleted---->" $1   #Replace the text of random line number
    sed -i "${rand} s/.*/ <----deleted---->/" $1   #Replace the text of random line number

done

else
    echo Error: No such file exists
fi
