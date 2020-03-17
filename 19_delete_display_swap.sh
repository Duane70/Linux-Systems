<<comments
   
   Author: Duane Royed Dsilva
   Date: 31/10/2019
   Description:
   Input: ./19_delete_display_swap.sh
   Output: swp file found :
          /home/user/ConventionalMethod/.pic16F887.as.swp
	  /home/user/Development/BeagleBone-Xm/VideoApp/.cmds.swp
	  /home/user/Development/LDD/.expt_drv.c.swp
	  /home/user/Development/LDD/.ddk_block.c.swp
   
comments

if [ $# -eq 0 ]                              #check if argument is passed in command line
then


  if [ `find ~ -type f -name *.swp | wc -l` -eq 0 ]  
  #find all .swp files in the home directory and if number of lines equals 0 then print no swp files found
  then
    echo "No swp files found in ~/ directory"

else
    echo "swp files found"
    find ~ -type f -name *.swp                       #display all the swap files in home directory
    find ~ -type f -name *.swp -delete               #delete all the swp files in home directory
fi



else

    if [ ! -d $1 ]                           #check if directory passed as CLA exist or not
    then 
	echo "$1 does not exist"
   
    else

    if [ `find $1 -type f -name *.swp | wc -l` -eq 0 ]
    then
    echo "No swp files found in $1"

    else
    echo "swp files found"
    find $1 -type f -name *.swp                      #display swp files in directory entered by user
    find $1 -type f -name *.swp -delete              #delete all the swap files in directory entered by user 
     fi
   fi
fi







