#!/bin/bash

# Tax calculate for Product Prices with 10% (not code)

read -p "Product Prices : " -a PRICES

for P in ${PRICES[@]}
do
    TAX=$[(P*10)/100]
    TOTAL_PRICE=$[P+TAX]
    echo "Product Price is $P and Total Price for product after tax is : $TOTAL_PRICE"
done