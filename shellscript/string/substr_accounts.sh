#!/bin/bash
F_ACC_NO=$1
# 7 - start index and 6 - total length you want
ACC_NO=`expr substr $F_ACC_NO 7 6`
printf "Account Number is : %s\n" $ACC_NO