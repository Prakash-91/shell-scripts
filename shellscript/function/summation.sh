#!/bin/bash

function f1(){
    X=$1
    Y=$2
    SUM=$[X+Y]
    echo "SUM is : $SUM"
}

F="y"
until [ $F == "n" ]
do
    read -p "A:" A
    read -p "B:" B
    f1 $A $B
    read -p "Enter if you want to continue (y/n)" F
done

