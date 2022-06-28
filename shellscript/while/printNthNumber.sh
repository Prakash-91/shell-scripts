#!/bin/bash
# Print Good Morning N-number of times (not code)
read -p "n:" N
I=1
while [ $I -le $N ]
do
    printf "%d\t" $I
    I=$[I+1]
done
printf "\n"