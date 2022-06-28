#!/bin/bash

function f1(){
    A=10
    local B=20
    echo "A- inside function :$A"
    echo "B- inside function :$B"
    echo "C- inside function :$C"
    #echo "D- inside function :$D"
}
C=40
f1
# local D=50 // This local can't ne used in outside function
echo "A- outside function :$A"
#echo "B- outside function :$B"  # B can't access here as it is local to function only
echo "C- outside function :$C"
#echo "D- outside function :$D"
