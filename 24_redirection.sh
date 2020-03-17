 <<comments
   
  Author: Duane Royed Dsilva
  Date: 21/10/19
  Description:
  Input:./redirection.sh 
  Output: Hai hello
	  Hai hello
	  Hai hello
          Hai hello
          Hai hello
          Hai hello
          Hai hello
   
comments











#!/bin/bash


tail -f file.txt >> file.txt | tail -f file.txt  #use redirection and tail command to create infinite loop
