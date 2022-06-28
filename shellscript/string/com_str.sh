#!/bin/bash
STR1=$1
STR2=$2
COMP_COUNT=`expr "$STR1" : "$STR2"`
printf "Compare count is  : %d\n" $COMP_COUNT