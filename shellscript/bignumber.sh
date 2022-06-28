#!/bin/bash

#WAP to find biggest number netween 2 numbers (not code)

read -p "Enter First Number :" A
read -p "Enter Second Numnber :" B

if [ $A -gt $B ]
then
    echo "A: $A is big number"
fi

if [ $B -gt $A ]
then
    echo "B: $B is big number"
fi

if [ $A -eq $B ]
then
    echo "A : $A and B: $B both are equal"
fi