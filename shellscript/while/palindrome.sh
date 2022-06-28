#!/bin/bash
read -p "Enter a Number:" N

REM=0
REV=0
NUM=$N

while [ $N -gt 0 ]
do
    REM=$[N%10]
    REV=$[(REV*10)+REM]
    N=$[N/10]
done

if [ $NUM -eq $REV ]
then
    echo "$REV is a palindrome number"
else
    echo "$REV is a Not palindrome number"
fi