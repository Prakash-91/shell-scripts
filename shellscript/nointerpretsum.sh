#1/bin/bash
A=$1
B=$2
C=$3
SUM=$[A+B+C]
echo "Summation of three number is : $SUM"
echo "Total Arguments count : $#"
echo "Argument list are : $@"
echo "2- Argument list are : $*"
#echo "First Argument is : "$@{0}