 <<comments
   
  Author: Duane Royed Dsilva
  Date:4/11/19
  Description:
  Input: ./29_free_space.sh
  Output:Filesystem /dev/sda5 have less than 10% freespace 
   
comments

#!/bin/bash

Filesystem_array=(`df | tr -s " " | cut -d " " -f1 | sed '/Filesystem/d'`)  #storing filesystem elements in an array after deleting the heading

echo "The File system available on this system are: "
echo ${Filesystem_array[@]} | tr ' ' '\n'
echo

<<comment
for i in `seq 0 $(( ${#Filesystem_array[@]} -1))`  #loop to display filesystems stored in array
do
    echo ${Filesystem_array[$i]}

done
echo
comment


Usage_array=(`df | tr -s " " | cut -d " " -f5 | sed '/Use%/d' | tr -d [:punct:]`)  #deleting the heading as well as percentage sign

for k in `seq 0 $(( ${#Usage_array[@]} - 1))`   #loop to display filesystem having less then 10 percent free space
do
    if [ $((100-${Usage_array[$k]})) -le 10 ]   #compare free space with 10
    then
	echo "Filesystem ${Filesystem_array[$k]} has less then 10% free space"

    fi
done


