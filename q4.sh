#!/bin/bash
echo "Enter the numbers: "
i=0
declare -a nums
while read line
do
nums=("${nums[@]}" $line)
let i+=1
done
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
echo ${nums[@]}
