#!/bin/bash
str=" "
cat quotes.txt | awk -F"~" '{
if($1!="")
{
print $2" once said,\""$1"\""
}
}' > speech.txt
