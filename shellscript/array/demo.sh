#!/bin/bash

ARY=(1 2 3 4 5 6 7 8 9)

echo "Array Lenth is : " ${#ARY[@]}
echo "Array Elements are is : " ${ARY[@]}

echo "Array 1st index Position to last index : ${ARY[@]:1}"
echo "Array 1st specified index to mentioned length: ${ARY[@]:2:5}"

: '
ARY1_SZ[0]=6
ARY1_SZ[1]=7

echo "First Element :"${ARY1_SZ[0]}
echo "Second Element :" ${ARY1_SZ[1]}


declare -a PRODUCTS

PRODUCTS[0]=60
PRODUCTS[1]=70

echo "First Element :"${PRODUCTS[0]}
echo "Second Element :" ${PRODUCTS[1]}

read -p "Enter Elements :" -a N

echo "Array Size is : " ${#N[@]}

echo "First Element :"${N[0]}
echo "Second Element :" ${N[1]}

'
