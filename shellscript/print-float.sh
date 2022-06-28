#!/bin/bash

read -p "Enter a Number : " A
read -p "Enter a deciaml Number : " B
read -p "Enter a Number : " C

printf "The value of first Number is : %d\n" $A
printf "The value of Second Number is : %f\n" $B
printf "The value of Third Number is : %d\n" $C

SUM=$( bc <<<"$A + $B + $C" )
printf "sum is : %f\n" $SUM