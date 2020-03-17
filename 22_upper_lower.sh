#<<comments
   
 # Author: Duane Royed Dsilva
  #Date: 31/10/19
 # Description: convert string lower to upper and upper to lower.
 # Input: ./22_upper_lower.sh file.txt
 # Output: WHAT IS OS?
   
#comments 

#!/bin/bas

if [ $# -eq 0 ]                               #checking if arguments are passed in command line
then
    echo Error: Please pass the file name through commmand line

elif [ $# -gt 1 ]			      #checking if more then 1 argument is passed in command line
then
    echo Error: Please pass only one argument 

elif [ ! -f $1 ]			      #checking if the file exists or not 
then 
    echo "$1 does not exist"

elif [ `cat $1 | wc -l` -eq 0 ]		      #checking if the file is empty
then
    echo Error: No contents inside $1

else

    echo -e "\n1-Lower-to-Upper \n2-Upper-to-Lower \n"  #display options to the user 
    echo -n "Please select an option: "
    read opt                                            #read the user input 

   case $opt in

       1) cat $1 | tr [:lower:] [:upper:]               #translate content inside the file from lower to upper case 
	  ;;


       2) cat $1 | tr [:upper:] [:lower:]               #translate content inside the file from upper to lower case 
          ;;

       *) echo Invalid option				#Error message 
	  ;;

      esac

fi
