#!/bin/bash

read -p "Enter nth Number : " N
PRE=0
CUR=1
NEXT=1

printf "%d\t" $CUR
while [ $NEXT -lt $N ] 
do
    printf "%d\t" $NEXT
    PRE=$CUR
    CUR=$NEXT
    NEXT=$[PRE+CUR]
done
printf "\n"