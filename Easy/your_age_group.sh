#!/bin/bash

read -p "Enter your age:" age

if [ $age -lt 18 ]; then
	echo "You are a minor."
elif [ $age -ge 18 ] && [ $age -le 65 ]; then
	echo "You are an adult."
else
	echo "You are a senior citizen."
fi

