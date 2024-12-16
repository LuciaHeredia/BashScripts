#!/bin/bash

# variables
sum=0 

# loop until valid positive number entered
while true; do
	read -p "Enter a positive number: " num

	if [[ $num =~ ^[1-9][0-9]*$ ]] && (( $num >0 )); then
		# loop to sum all numbers from 1 to entered value
		for ((i=1; i<=num; i++)); do
			sum=$((sum+i))
		done
		break
	fi
done

echo "Sum of numbers (1 to $num): $sum"

