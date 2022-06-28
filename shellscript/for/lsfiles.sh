#!/bin/bash
N=$#
if [ $N -ne 1 ]
then
    echo "ERROR: Please pass one Directory"
    exit 1
fi
#DIR="/home/prakash/shellscript"
DIR=$1
if [ ! -d $DIR ]
then
    echo "ERROR : $DIR NOT a Directory"
    exit 1
fi
#CMD_SUB=$(ls $DIR)
#for F in $CMD_SUB
for F in $DIR/*
do
    if [ -f $F ]
    then
        echo $F
    fi
done