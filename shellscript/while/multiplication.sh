#!/bin/bash
read -p "Enter Mupltiplcation of Number: " N
I=1
while [ $I -le 10 ]
do
    MUL=$[N*I]
    printf "%2d * %2d = %2d\n" $N $I $MUL
    I=$[I+1]
done