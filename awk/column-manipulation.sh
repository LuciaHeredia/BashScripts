#!/bin/bash

file="your/file/path/"

echo "Column Manipulation:"
echo "1. Printing 2nd & 4th columns:"
awk '{print $2,$4}' "$file"
echo "2. Calculating and printing the sum of values in 3rd column:"
awk '{sum += $3} END {print sum}' "$file"

