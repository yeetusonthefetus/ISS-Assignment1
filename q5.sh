#!/bin/bash
read word
l=${#word}
for ((i=l-1; i>-1; i--))
do
  arr=("${arr[@]}" ${word:i:1})
done
for i in ${arr[@]}
do
echo -n $i
done
echo
for i in ${arr[@]}
do
printf -v num %d "'$i"
(( num +=1 ))
printf -v newchar \\$(printf '%03o' "$num")
echo -n "$newchar"
done
echo
let m=l/2
for ((i=m-1; i>-1; i--))
do
  echo -n ${word:i:1}
done
for ((i=l-1; i>m-1; i--))
do
  echo -n ${word:i:1}
done
echo
