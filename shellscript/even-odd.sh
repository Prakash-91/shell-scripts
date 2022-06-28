#!/bin/bash
#WAP for print number is even or odd (notcode)
read -p "Enter a number : " NO
REM=$[NO%2]

if [ $REM -eq 0 ]
then
  echo "$NO is a even number"
 else
  echo "$NO is a odd number" 
fi