#!/bin/bash

N=$1
I=1
REM=0
C=0
while [ $I -le $N ]
do
    REM=$[N%I]
    if [ $REM -eq 0 ]
    then
        C=$[C+1]
    fi
    I=$[I+1]
done

if [ $C -eq 2 ]
then
    printf "Prime Number : %d\n " $N
else
    printf "Not a Prime Number : %d\n " $N
fi   