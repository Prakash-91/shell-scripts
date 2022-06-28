#!/bin/bash

read -p "Enter a gross income : " GROSS_INCOME
read -p "Enter Gender of an Employee : " GENDER

TAX_PAID=0
if [ $GENDER == "male" ]
then
    TAX_PAID=$[($GROSS_INCOME*15)/100]
else
    TAX_PAID=$[($GROSS_INCOME*12)/100]
fi
printf "Gross income of an Employee is : %d and taxable amt is : %d\n" $GROSS_INCOME $TAX_PAID
