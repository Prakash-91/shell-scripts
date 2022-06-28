#!/bin/bash

read -p "Enter Math Mark :" M1
read -p "Enter Science Mark :" M2
read -p "Enter Sanskrit Mark :" M3
read -p "Enter MIL Mark :" M4
read -p "Enter History Mark :" M5

TOTAL_MARK=0;
AVG=0;
PER=0
SUM=500
TOTAL_MARK=$[M1+M2+M3+M4+M5]
if [ $TOTAL_MARK -gt 0 ]
then
   AVG=$[TOTAL_MARK/5]
   PER=$[(100*TOTAL_MARK)/500]
else
    echo "Total Mark is :$TOTAL_MARK"
fi
printf "Total Mark is : %5d \n" $TOTAL_MARK
printf "Average Mark is : %5d \n" $AVG
printf "Percentage is : %5d \n" $PER


