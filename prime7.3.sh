#!/bin/bash
i=0
read -p "enter a number:" n
echo "the prime factors of $n are"
for(( p = 2; p * p <= n; ))
do
  if(( n % p ==0))
  then
      array[index++]=$p
      (( n /= p ))
  else
      (( p += 1 ))
  fi
done

array[i]=$n
echo "${array[@]}"
