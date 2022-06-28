#!/bin/bash

printf "1- honda\n2- shine\n3- unicorn\n4- dio\n"
read -p "Choose Bike Model:" MODEL
EX_SHROOM_PRICE=0
INSURANCE_POLICY=0
ON_ROAD_PRICE=0

case $MODEL in 
    "1")
        EX_SHROOM_PRICE=70000
        ;;
    "2")
        EX_SHROOM_PRICE=100000
        ;;
    "3")
        EX_SHROOM_PRICE=120000
        ;;
    "4")
        EX_SHROOM_PRICE=60000
        ;;
    "*") 
        echo "Wrong input , BYE!!!"
        ;;
esac
INSURANCE_POLICY=$[(EX_SHROOM_PRICE*9)/100]
ON_ROAD_PRICE=$[EX_SHROOM_PRICE+((EX_SHROOM_PRICE*23)/100)+INSURANCE_POLICY]
printf "Model Number is: %8s\n" $MODEL
printf "Ex Showroom Price is : %8d\n" $EX_SHROOM_PRICE
printf "INSURANCE_POLICY price is : %8d\n" $INSURANCE_POLICY
printf "On Road Price is : %8d\n" $ON_ROAD_PRICE

    
