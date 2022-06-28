#!/bin/bash
DIRECTORY_NM=$1
CMD_SUB=$(ls $DIRECTORY_NM)
#echo -e "$CMD_SUB\n"
#printf "%s\n" $CMD_SUB
echo "$CMD_SUB"