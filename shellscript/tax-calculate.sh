#!/bin/bash
#WAP to caluclate tax for an employee based on age (not code)

read -p "Enter Gorss Salary of an Employee :" SAL
read -p "Enter age of an Employee : " AGE

TAX_CAL=0
if [ $AGE -gt 30 -a $SAL -le 100000 ]
then
    TAX_CAL=0
   echo "Gross Salary of an Employee is : $SAL and Tax to be paid is : $TAX_CAL"
elif [ $AGE -gt 35 -a $SAL -le 200000 ]
then
   TAX_CAL=$[SAL*10/100]
   printf "Gross Salary of an Employee is %d and Tax to be paid is %d\n:" $SAL $TAX_CAL
elif [ $AGE -gt 40 -a $SAL -le 300000 ]
then
   TAX_CAL=$[SAL*20/100]
   echo "Gross Salary of an Employee is " $SAL " and Tax to be paid is :" $TAX_CAL
 else
   TAX_CAL=$[SAL*30/100]
   echo "Gross Salary of an Employee is " $SAL " and Tax to be paid is " $TAX_CAL
fi

#echo "No condition matched ..."