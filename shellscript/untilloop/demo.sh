#!/bin/bash
# Print until pressing 'q'

N="y"
I=1
until [ $N == "q" ]
do
    echo $I
    I=$[I+1]
    read -p "enter (y/q) : " N
done