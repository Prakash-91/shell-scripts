#!/bin/bash
#WAP for calculating power bill based on units and Connection Type (not code)

read -p "Enter Connection Type :" CON_TYPE
read -p "Enter number of Units :" UNITS
BILL_AMT=0

if [ $CON_TYPE == "domestic" ]
then 
    if [ $UNITS -le 100 ]
        then
            BILL_AMT=$(echo "$UNITS * 2.20" | bc)
        elif [ $UNITS -gt 100 -a $UNITS -le 300 ]
        then
            BILL_AMT=$(echo "(100 * 2.20) +  (($UNITS - 100) * 3.30)" | bc)
        else
            BILL_AMT=$(echo "(100 * 2.20) +  (200 * 3.30) + (($UNITS - 300) * 4.5)" | bc)
    fi
else
    if [ $UNITS -le 200 ]
    then
        BILL_AMT=$[UNITS*6]
    elif [ $UNITS -gt 200 -a $UNITS -le 500 ]
    then
        BILL_AMT=$[(200*6)+(UNITS-200)*10]
    else
         BILL_AMT=$[(200*6)+(300*10)+(UNITS-500)*15] 
    fi
fi 
printf "Connection Type is : %10s\n " $CON_TYPE
printf "Number of Unit is : %10d\n " $UNITS
printf "Total Bill amount is %10f\n" $BILL_AMT