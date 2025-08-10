#!/bin/bash

# Armstrong number: a number that is the sum of its own digits each raised to the power of the number of digits.
# Insert a number and get a true/false response.
# Ex.: 9 is an Armstrong number, because 9 = 9^1 = 9
# Ex.: 10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 1

n="$1"
n_len=${#n}
sum=0

# loop through digits
for (( i=0; i<$n_len; i++ )); do
    digit=${n:i:1}
    sum=$(( sum + digit**n_len ))
done

# check equalness
if (( n == sum )); then
    echo "True"
else
    echo "False"
fi

