#!/bin/bash
SUM=0
function add(){
ARGS=$#
    if [ $ARGS -ne 2 ]
    then
        return 100
    fi
    X=$1
    Y=$2
    SUM=$[X+Y]
    return 0

}
#read -p "Enter First Number :" A
#read -p "Enter Second Number :" B
#add $A $B
add $@
STATUS=$?
#echo "STATUS : $STATUS"
    if [ $STATUS -eq 0 ]
    then
        echo "Sum is : $SUM"
    elif [ $STATUS -ne 0 ]
    then
        echo "ERROR : Missing Arguments"
        exit 1
    fi

