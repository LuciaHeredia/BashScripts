#!/bin/bash

echo "Searching a word in a text file.."

read -p "Enter file path with name: " file
if [ ! -f "$file" ]; then #True if FILE exists & is a regular file
	echo "File doesn't exist."
	exit
fi

read -p "Enter word to search: " word
#-o :extract only the matched text
#-i :case-insensitive
result=$(grep -o -i "$word" "$file")
if [ "$result" != "" ]; then
	echo "Found a match!"
else
	echo "No match."
fi

