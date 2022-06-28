#!/bin/bash
read -p "numbers : " -a N
LEN=${#N[@]}
echo "Length : $LEN" 
I=$[LEN-1]

: '
while [ $I -ge 0 ]
do
    echo "${N[I]}"
    I=$[I-1];
done
'

#Using until loop
until [ $I -lt 0 ]
do
    echo "${N[I]}"
    I=$[I-1]
done
