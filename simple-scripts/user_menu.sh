#!/bin/bash

while true; do
	read -p "Menu:
	1. Check Date
	2. Check Time
	3. Exit
	Your choice: " option

	case "$option" in
		1) date ;;
		2) date +%T ;;
		3) exit ;;
		*) echo "Invalid option!" ;;
	esac
done

