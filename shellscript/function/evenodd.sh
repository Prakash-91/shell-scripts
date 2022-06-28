#!/bin/bash
REM=0
NUMBER=""
function evenodd(){
ARGS=$#
    if [ $ARGS -eq 0 -o $ARGS -gt 1 ]; then
    return 100
    fi

    N=$1
    REM=$[N%2]
    if [ $REM -eq 0 ]
    then
        NUMBER="even"
    else
        NUMBER="odd"
    fi
    return 0

}
#read -p "Please Enter a Number : " N
evenodd $@
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo "$NUMBER"
elif [ $STATUS -eq 100 ] 
then
    echo "ERROR: Please pass one Argument "
    exit 1
fi