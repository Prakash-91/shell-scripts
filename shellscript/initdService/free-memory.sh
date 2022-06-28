#!/bin/bash
while [ true ]
do
    date >> /var/memory-check.log
    free -h | grep -wv "Swap" | awk '{print $1 "\t" $2 "\t" $3 "\t" $6}' >> /var/memory-check.log
    sleep 60
done 