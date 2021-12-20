#!/bin/bash
index=0
for(( i = 0; i<= 100; ))
do
  if (( i % 11 == 0 ))
  then
     array[index++]=$i
     (( i += 11))
   else
     (( i++ ))
   fi
   done
echo "array: ${array[@]} "
