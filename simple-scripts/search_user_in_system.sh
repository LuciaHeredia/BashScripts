#!/bin/bash

read -p "Enter username:" username

# check if user exist in /etc/passwd file
if grep -q "^$username:" /etc/passwd; then
	echo "User found."
else
	echo "User not found."
fi

