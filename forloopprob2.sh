#!/bin/bash -x
read -p "Enter the value of n:"n
sum=1
for (( i=1; i<=n; i++ ))
do
sum= $(( $sum + $((1/$i)) ))
done
echo $sum
