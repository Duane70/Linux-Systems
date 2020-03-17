 <<comments
   
  Author: Duane Royed Dsilva
  Date: 25/10/19
  Description: To sort a given number in ascending or descending order.
  Input: ./13_sorting.sh -a 5 4 6 2 3 8 9 7 1
  Output: Ascending order of array is 1 2 3 4 5 6 7 8 9
   
comments

#!/bin/bash


if [ $# -eq 0 ]
then
    echo "Error: Please pass the argument through command line"
    
else

   array=($@)                                        #store all arguments in an array
   case $1 in

       -a)                                           #case for ascending order

	   for i in `seq 1 $(( ${#array[@]} - 1 ))`        
	   do

	       for j in `seq 1 $(( ${#array[@]} - 1 ))`  #loop runs from first to last element of array
	   do
	       if [ ${array[$i]} -lt ${array[$j]} ]      #compare ith array element to all the other elements of the array
	       then
		   temp=${array[$i]}                     #swap the array elements if the above condition is true
		   array[$i]=${array[$j]}
		   array[$j]=$temp
                  
		fi
	    done

	done

	if [ ${#array[@]} -le 2 ]                        #check if number of arguments is greater then 2 to perform sorting operation
	then
	    echo "Error: Please pass more then 1 argument"

	else
	echo Ascending order: ${array[@]}                 #display the array after both the loops have been executed
    fi
	;;


	  -d)                                             #case for descending order

	   for i in `seq 1 $(( ${#array[@]} - 1 ))`
	   do

	       for j in `seq 1 $(( ${#array[@]} - 1 ))`
	   do
	       if [ ${array[$i]} -gt ${array[$j]} ]
	       then
		    temp=${array[$i]}
		   array[$i]=${array[$j]}
		   array[$j]=$temp


		fi
	    done
	done
	
	if [ ${#array[@]} -le 2 ]
	then
	    echo "Error: Please pass more then 1 argument"

	else

	echo Descending order: ${array[@]}
        
    fi
	;;

          *)  #default case

	      echo -e "Error: Missing operator\nUsage: ./12_sorting -a/-d 4 23 5 6 3"


    esac

fi
