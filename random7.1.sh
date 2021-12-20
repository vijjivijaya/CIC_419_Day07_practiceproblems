#!/bin/bash
MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ];
do
  number[$count]=$((RANDOM%1000))
  let "count += 1"
done

echo "Random numbers: ${number[*]}"

max=secondMax=${number[1]}
min=secondMin=${number[1]}

for i in "${number[@]}"
do
  if [[ "$i" -gt "$max" ]]; then
      secondMax="$max"
      max="$i"
    elif [[ "$i" -gt "$secondMax" && "$i" != "$max" ]]; then
     secondMax="$i"
    fi
    if [[ "$i" -lt "$min" ]]; then
       secondMin="$min"
       min="$i"
    elif [[ "$i" -lt "$secondMin" && "$i" != "$min" ]]; then
       secondMin="$i"
    fi
done
echo "second Largest: " "$secondMax"
echo "second Smallest: " "$secondMin"

