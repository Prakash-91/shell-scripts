#!/bin/bash
#WAP to find the biggest number in the given Array (not code)
read -p "Array Elements are : " -a N
LEN=${#N[@]}
BIG=${N[0]}
I=1
while [ $I -lt $LEN ]
do
    if [ $BIG -lt ${N[I]} ]
    then
        BIG=${N[I]} 
    fi
    I=$[I+1]
done

printf "The Biggest number in the Array is : %d \n" $BIG