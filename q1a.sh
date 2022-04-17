#!/bin/bash
grep -v '^$' quotes.txt > temp.txt
cp temp.txt quotes.txt
rm temp.txt

