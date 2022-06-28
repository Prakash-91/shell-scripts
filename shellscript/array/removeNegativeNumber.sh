#!/bin/bash

read -p "Array : " -a NUMBERS
declare -a POS_NUMS
INDEX=0
for NUM in ${NUMBERS[@]}
do
    if [ $NUM -gt 0 ]
    then
       #POS_NUMS[${#POS_NUMS[@]}]=$NUM
       POS_NUMS[INDEX]=$NUM
       INDEX=$[INDEX+1]
    fi
done
echo "Positive Array is : ${POS_NUMS[@]}"
