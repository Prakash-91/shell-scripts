#!/bin/bash
# Wap to find the sum of odd positions of the given array (not code)
read -p "Array : " -a NUMBERS
LEN=${#NUMBERS[@]}
SUM=0
: '
I=0
while [ $I -le $LEN ]
do 
    VAL=${NUMBERS[$I]}
    SUM=$[SUM + VAL]
    I=$[I+2]
done
'

#using for counter loop
for ((K=0; K <= LEN ; K=K+2))
do
    VAL=${NUMBERS[$K]}
    SUM=$[SUM + VAL]
done
echo "Sum of odd positions of an Array element is :$SUM"
