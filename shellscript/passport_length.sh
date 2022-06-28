#!/bin/bash
PASSPORT_NO=$1
#Using Command substituion
#LEN=$(echo -n $PASSPORT_NO | wc -c)
#echo $LEN

#Using expr
LEN=`expr length $PASSPORT_NO`
printf "Length of the String is : %d\n" $LEN