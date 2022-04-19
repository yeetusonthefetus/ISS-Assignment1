#!/bin/bash
echo -n $(stat -c%s "$1")
echo
wc -l < $1
echo 
wc -w < $1
echo 
awk '$0="Line No:<"NR">-Count of words: ["NF"]"' $1
echo
cat $1 | tr ' ' '\n' | sort | uniq -cd | awk '{
if ($1!="1")
{
print "Word <"$2">-Count of repetition: ["$1"]"
}
}'
echo
