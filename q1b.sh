#!/bin/bash
sort quotes.txt | uniq -u > temp.txt
cp temp.txt quotes.txt
rm temp.txt
