#!/bin/bash

read -p "Enter a Number : " N
C=1
I=2
while [ $I -lt $N ]
do
    REM=$[N%I]
    if [ $REM -eq 0 ]
    then
        echo "$N is not a Prime Number"
        exit 0
    fi
    I=$[I+1]
done

if [ $C -ne 1 -a $I -gt 1 ]
then
    echo "$N is a Prime Number"
fi