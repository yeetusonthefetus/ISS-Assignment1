#!/bin/bash
cat $1 | tr ' ' '\n' | sort | uniq -c | awk '{
if ($1!="1")
{
echo $1
print "Word <"$2">-Count of repetition: ["$1"]"
}
}' 
