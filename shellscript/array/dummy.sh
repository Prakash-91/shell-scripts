#!/bin/bash

function traverse(){
    len=${#N[@]}
    echo "Length of the Array is : $len"
    if [ $len -eq 0 ]
    then
        return 100
    fi

    arr=${N[@]}

    for I in ${arr[@]}
    do
        echo $I
    done
    return 0

}

read -p "Enter some numbers : " -a N
#echo ${N[@]}
traverse ${N[@]}
STATUS=$?
if [ $STATUS -eq 0 ]
then
    echo "Data Successfully Travelled ..."
elif [ $STATUS -eq 100 ]
then
    echo "ERROR ! Please pass some input "
    exit 1
fi
