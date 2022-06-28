#!/bin/bash
read -p "Enter a Number:" N
I=1
F=1
while [ $I -le $N ]
do
    F=$[F*I]
    I=$[I+1]
done
printf "Factorial of Number %3d = %3d \n" $N $F