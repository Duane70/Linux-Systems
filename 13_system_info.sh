<<comments
  
Author: Duane Royed Dsilva
Date: 28/10/19
Description:Print system information commands
Input:./14_system_info.sh 
Output:
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10.Memory information.
11.File system information.
12.Currently running process.
Enter the choice : 2
Your shell directory is /bin/bash
  
comments

#!/bin/bash

echo "Enter the choice: "


#select loop allows to create easy menus
select info in Currently_logged_users Your_shell_directory Home_directory Os_name_version Current_working_directory Number_of_users_logged_in Show_all_available_shells_in_your_system Hard_disk_information CPU_information Memory_information File_system_information Currently_running_process

do

    case $info in 

	Currently_logged_users)
	    whoami
	    ;;

	Your_shell_directory)
	    echo $SHELL
	    ;;
	
	Home_directory)
	    echo $HOME
	    ;;
	    
	Os_name_version)
	   cat /proc/version
	   ;;

	Current_working_directory)
	    echo $PWD
	    ;;

	Number_of_users_logged_in)
	    who -q
	    ;;

	Show_all_available_shells_in_your_system)
             cat /etc/shells
	     ;;
         
	Hard_disk_information)
	    du -h
	    ;;
         
	CPU_information)
	    lscpu
	    ;;

	Memory_information)
	   cat /proc/meminfo
            ;;
           
	File_system_information)
            df
	    ;;
	
	Currently_running_process)
	    ps
	    ;;

	esac
    done
