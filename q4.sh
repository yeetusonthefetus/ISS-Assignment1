#!/bin/bash
echo "Enter the numbers: "
declare -a nums
read string
l=${#string}
let l+=1
i=l/2
IFS=',' read -r -a nums <<< "$string"
for ((j=0; j<i; j++))
do
  for((k=0; k<i-j-1; k++))
  do
    if [ ${nums[k]} -gt ${nums[$((k+1))]} ]
    then
      temp=${nums[k]}
      nums[$k]=${nums[$((k+1))]}
      nums[$((k+1))]=$temp
    fi
  done
done
for ((j=0; j<i-1 ; j++))
do
  echo -n ${nums[j]}","
done
echo ${nums[$((i-1))]}
