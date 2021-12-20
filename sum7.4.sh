#!/bin/bash
echo "enter three integers with atleast one negative one"
for (( i=0; i<3; i++))
do
     read arr[$i]
done
sum=0
for ((i=0; i<3; i++))
do
  sum=$(( $sum + ${arr[$i]} ))
done
echo "sum of three integers=" $sum
