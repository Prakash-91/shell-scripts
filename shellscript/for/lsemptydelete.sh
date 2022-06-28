#1/bin/bash
NO_OF_ARGS=$#

if [ $NO_OF_ARGS -ne 1 ]
then
    echo "ERROR: Please pass one Argument"
    exit 102
fi

DIR=$1
if [ ! -d $DIR ] 
then
    echo "ERROR : Not a valid directory"
    exit 103
fi
EMPTY_FILES_COUNT=0
for F in $DIR/*
do
    if [ -f $F -a ! -s $F ]
    then
       rm $F
       EMPTY_FILES_COUNT=$[EMPTY_FILES_COUNT+1]
    fi
done

printf "%d files deleted \n" $EMPTY_FILES_COUNT