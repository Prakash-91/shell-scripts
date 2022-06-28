#1/bin/bash

#  $# -> NO of Arguments Pass
#  $@ -> show all Aruguments passed in Argument
#  $* -> show all Aruguments passed in Argument
#  $? -> Provide the exit code in shell
NO_OF_ARGS=$#
if [ $NO_OF_ARGS -eq 0 ]
then
    echo "ERROR: Please pass one Argument"
    exit 100
fi

DIR=$1
if [ ! -d $DIR ] 
then
    echo "ERROR : Not a valid directory"
    exit 101
fi

for F in $DIR/*
do
    if [ -f $F -a -s $F ]
    then
        echo $F
    fi
done
