
<<comments
   
   Author: Duane Royed Dsilva
   Date:31/10/2019
   Description:
   Input: 
   Output: When we start shell (whenever you opening new tab or terminal)
           Good Morning
           This is Thursday 08 in June of 2017 (10:44:10 AM)
   
comments
 
#!/bin/bash

#store the outputs of various date commands in respective variables
hour=`date +%H`
day=`date +%A`
date=`date +%e`
month=`date +%B`
year=`date +%Y`
time=`date +%r`

#compare value of variable hour to print appropriate greeting message
if [ $hour -ge 5 -a $hour -lt 12 ]
then
    echo "Good Morning $USER, Have nice day! This is $day $date in $month of $year ($time)"



elif [ $hour -ge 12 -a $hour -lt 13 ]
then
    echo " Good Noon $USER, Have nice day! This is $day $date in $month of $year ($time)"



elif [ $hour -ge 13 -a $hour -lt 17 ]
then
    echo "Good Afternoon $USER, Have nice day! This is $day $date in $month of $year ($time)"



elif [ $hour -ge 17 -a $hour -lt 21 ]
then
    echo "Good Evening $USER, Have nice day! This is $day $date in $month of $year ($time)"


else
    echo "Good night $USER, Have nice day! This is $day $date in $month of $year ($time)"
fi
