#!/bin/bash

if [[ $1 == "1" ]]              
then
	format=T
elif [[ $1 == "2" ]]            
	then
	format=r
else
	printf "%s\n" "Please provide valid argument (1 to use 24 hour format and 2 to use 12 hour format)"   
	exit 1
fi

printf "%s\n" "Digital Clock Running...."
printf "%s\n" "To stop this clock, execute ps command and then use kill {PID} command"


for (( ; ; ))

    do tput sc;                           
                              
    tput cup 0 $(($(tput cols)-15));       
           
    TIME_=$(date +"%"$format)            
               
    echo $TIME_                
                            
    tput rc;                 

    sleep 1                            

done &