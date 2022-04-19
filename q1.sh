#!/bin/bash
grep -v '^$' quotes.txt > temp.txt 
sort temp.txt | uniq -u
rm temp.txt
