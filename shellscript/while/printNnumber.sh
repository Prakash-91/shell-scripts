#!/bin/bash
# Print Good Morning N-number of times (not code)
read -p "n:" N
I=1
while [ $I -le $N ]
do
    echo "Good Morning!"
    I=$[I+1]
done