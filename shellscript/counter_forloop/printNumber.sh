#!/bin/bash

read -p "n: " N

for ((I=1; I <= N; I++))
do
    printf "%2d \t " $I
done
printf "\n"