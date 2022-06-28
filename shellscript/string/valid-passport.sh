#!/bin/bash
# WAP for checking valid passport number based on 8 characters (nod code)
read -p "Enter Passport Number :" PASSPORT_NO
LEN=`expr length $PASSPORT_NO`
CT=8

if [ $LEN -eq $CT ]
then
    echo "Passport : $PASSPORT_NO is a valid"
fi

if [ $LEN -ne $CT ]
then
    echo "Passport : $PASSPORT_NO is not a valid"
fi