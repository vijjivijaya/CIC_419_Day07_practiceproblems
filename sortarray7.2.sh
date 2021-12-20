#!/bin/bash
MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ];
do
    array[$count]=$((RANDOM%900+100))
  let "count += 1"
done

echo "Random numbers: ${number[*]}"

printf '%s\n' "${array[@]}" | sort -n

echo "second largest=${array[8]}"
echo "second smallest=${array[2]}"


