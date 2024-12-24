#!/bin/bash

###### start message ######
echo "Searching a word in a text file.."
echo ""

###### file path ######
read -p "Enter file path with name: " file
if [ ! -f "$file" ]; then #True if FILE exists & is a regular file
	echo "File doesn't exist."
	exit
fi
###### word to search ######
read -p "Enter word to search: " word

###### user menu ######
while true; do
	echo ""
	read -p "Select option:
	1. Search for: "$word", inside the file.
	2. Count the lines containing: "$word".
	3. Exit
	Your choice: " option
	case "$option" in
		1) result=$(grep -o -i "$word" "$file")
		#-o :extract only the matched text
		#-i :case-insensitive
		if [ "$result" != "" ]; then
        		echo "Found a match for the word: $word"
		else
        		echo "No match for the word: $word"
		fi ;;
		2) echo "second option" ;;
		3) exit ;;
		*) echo "Invalid option!" ;;
	esac
done

