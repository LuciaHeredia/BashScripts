#!/bin/bash

# Find the difference between: 
# the square of the sum of the first N natural numbers (1 + 2 + ... + N)² 
# AND the sum of the squares of the first ten natural numbers  (1² + 2² + ... + N²)

# Ex.:
# Input N=10 - positive number ->
# square_of_sum=(1 + 2 + ... + 10)² = 3025,
# sum_of_squares=(1² + 2² + ... + 10²) = 385,
# Output (the difference between: 3025 - 385 =) 2640


n="$1" # input number
square_of_sum=0
sum_of_squares=0

# Generate a sequence of numbers from 1 to n, 
# join with '+' to create a sum expression,
# and pipe to bc for calculation
square_of_sum=$(seq 1 "$n" | paste -sd+ | bc)
square_of_sum=$(echo "$square_of_sum ^ 2" | bc)

# Generate a sequence of numbers from 1 to n,
# pipe to awk which sums the square of each number,
# storing result in s
sum_of_squares=$(seq 1 "$n" | awk '{s+= $1*$1} END {print s}')

# output: Subtract sum_of_squares from square_of_sum
echo "$(( square_of_sum - sum_of_squares ))"
