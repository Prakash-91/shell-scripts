#!/bin/bash
read -p "Entar A :" A
read -p "Enter B :" B
SUM=$[A+B]
echo "SUM : $SUM"
SUM1=`expr $A + $B`
echo "SUM1 :$SUM1"
SUM2=$((A+B))
echo "SUM2 :$SUM2"