#!/bin/bash

function greet(){
    echo "Hello Everyone"
    echo "I hope all are doing great"
}

function meeting(){
    echo "Welcome all to the meeting "
}

function m1(){
    A=$1
    B=$2
    SUM=$[A+B]
    echo "SUM is :$SUM"
}

ls
echo "Good Evening "
greet
echo "Meeting is about to start"
meeting
echo "I hope all have good session."
m1 10 20