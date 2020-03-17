#!/bin/bash

echo "Please enter password: "
read user_passwd
flaglng=0
flagcap=0
flagncap=0
flagnum=0
flagsp=0

if [[ ${#user_passwd} -ge 10 ]]; then
    flaglng=1
fi

if [[ "$user_passwd" =~ [A-Z] ]]; then
    flagcap=1
fi

if [[ "$user_passwd" =~ [a-z] ]]; then
    flagncap=1
fi

if [[ "$user_passwd" =~ [0-9] ]]; then
    flagnum=1
fi

if [[ "$user_passwd" =~ ['!@#$%^_*()+'] ]] then
    flagsp=1
fi

if [[ "$flaglng" == 1 && "$flagcap" == 1 && "$flagncap" == 1 && "$flagnum" == 1 && "$flagsp" ==1 ]]; then
     echo "Password Strong!"
fi

if [[ "$flaglng" = 0 ]]; then
   echo "Weak Password! It should include at least 10 characters."
fi

if [[ "$flagcap" = 0 ]]; then
    echo "Weak Password! It should include at least 1 upper case letter."
fi

if [[ "$flagncap" = 0 ]]; then
    echo "Weak Password! It should include at least 1 lower case letter."
fi

if [[ "$flagnum" = 0 ]]; then
    echo "Weak Password! It should include at least 1 number."
fi


