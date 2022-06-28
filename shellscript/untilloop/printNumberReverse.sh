#!/bin/bash

# untill loop is the reverse of while loop .
# This will execute until condition is false . Once cond is true , it won't execute.
read -p "Enter Number from where it will start print : " N

until [ $N -eq 0 ]
do
    echo "$N"
    N=$[N-1]
done