 <<comments
   
  Author: Duane Royed Dsilva
  Date: 21/10/19
  Description: 
  Input:/04_BMI.sh
  Output: Enter the weight in Kg : 45.5
Enter the height in meters : 1.5
Your Normal.
   
comments

#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Please pass arguments in command line"
    echo "Usage: ./04_BMI.sh 2.5 + 2.5"

else

    BMI=$(echo "scale=2; $1/($2*$2)" |bc)
    echo $BMI


    if [ `echo "$BMI < 18.5" |bc` -eq 1 ]
    then
	echo Your Underweight

    elif [ `echo "$BMI >= 18.5" |bc` -eq 1 -a `echo "$BMI < 24.9"|bc` -eq 1 ]
    then
	echo Your Normal

    elif [ `echo "$BMI >= 25" |bc` -eq 1 -a `echo "$BMI < 29.9"|bc` -eq 1 ]
    then
	echo Your Overweight

    elif [ `echo "$BMI >= 30" |bc` -eq 1 ]
    then
	echo Your Obese

    
    fi

fi










