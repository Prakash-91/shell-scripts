#!/bin/bash
read -p "numbers : " -a N
echo "Length : " ${#N[@]}
# Using for-in loop
: '
for E in ${N[@]}
do
    echo $E
done
'
# Using while loop
: '
LEN=${#N[@]}
I=0
while [ $I -lt $LEN ]
do
    echo ${N[I]}
    I=$[I+1]
done
'
# Using for counter loop
LEN=${#N[@]}

for ((I=0;I < LEN;I++))
do
    echo ${N[I]}
done