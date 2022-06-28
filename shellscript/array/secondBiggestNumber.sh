#!/bin/bash
#WAP to find the biggest number in the given Array (not code)
read -p "Array Elements are : " -a N
LEN=${#N[@]}
BIG=${N[0]}
SECOND_BIG=0
I=1
while [ $I -lt $LEN ]
do
    if [ $BIG -lt ${N[I]} ]
    then
        SECOND_BIG=$BIG
        BIG=${N[I]} 
    elif [ ${N[I]} -ne $SECOND_BIG  -a  ${N[I]} -gt $SECOND_BIG ] 
    then
        SECOND_BIG=${N[I]}
    fi
    I=$[I+1]

done

printf "The Second Biggest number in the Array is : %d \n" $SECOND_BIG