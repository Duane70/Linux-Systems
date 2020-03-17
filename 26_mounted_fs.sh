 <<comments
  
   Author: Duane Royed Dsilva
   Date: 04/11/2019
   Description: 
   Input: ./26_mounted.sh /dev/sda5
   Output: File-system /dev/sda5 is mounted on / and it is having 98%
           used space with 3298220 KB free.
   
comments
  
#!/bin/bash


if [ $# -eq 0 ]                           #check if no argument is passed
then
    echo " Error: Please pass the name of the file system through command line "

else

array=(`df | tr -s " " | cut -d " " -f1 | sed '/Filesystem/d'`) #to store Filesystem elements in an array after deleting the heading


mount_array=(`df | tr -s " " | cut -d " " -f6 | sed '/Mounted$/d'`) #to store Mounted elements in an array after deleting the heading

usage_array=(`df | tr -s " " | cut -d " " -f5 | sed '/Use%/d'`)    #to store usage space in an array after deleting the heading

available_array=(`df | tr -s " " | cut -d " " -f4 | sed '/Available/d'`) #to store available space in an array after deleting the heading


count=0     #initialize count to 0

for i in `seq 0 $((${#array[@]} - 1))`    #loop to check if filesystem matches the argument
do
    if [ "$1" = "${array[$i]}" ]
    then
	count=1                  #update count to 1 only if there is a match

        echo "File system $1 is mounted on ${mount_array[$i]} and it is having ${usage_array[$i]} used space with ${available_array[$i]} kb free."

    fi
done

if [ $count -eq 0 ]             #when file system not found print message
then
     echo $1 is not mounted
fi
fi
