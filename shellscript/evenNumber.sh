#!/bin/bash

# Print all even numbers till Nth Number (not code)
N=$1
I=1
REM=0
while [ $I -le $N ]
do
    REM=$[$I%2]
    if [ $REM -eq 0 ]
    then
        printf "%d \t " $I 
    fi
    I=$[I+1]
done
printf "\n"