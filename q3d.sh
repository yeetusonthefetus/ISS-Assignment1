#!/bin/bash
awk '$0="Line No:<"NR">-Count of words: ["NF"]"' $1
