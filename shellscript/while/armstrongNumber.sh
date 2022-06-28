#!/bin/bash
read -p "Enter a Number:" N

REM=0
REV=0
NUM=$N

while [ $N -gt 0 ]
do
    REM=$[N%10]
    REV=$[REV+(REM*REM*REM)]
    N=$[N/10]
done

if [ $NUM -eq $REV ]
then
    echo "$NUM is a Armstrong number"
else
    echo "$NUM is a Not Armstrong number"
fi
