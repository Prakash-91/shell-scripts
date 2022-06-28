#!/bin/bash
# Pass input in noninterput mode(from command prompt)
SUM=0
for I in $@
do
    SUM=$[SUM+I]
done
echo "Summation is : $SUM"