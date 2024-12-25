#!/bin/bash

###### Start msg
echo -e "Recursive directory search, for TODO tasks: \n"

###### Directory path
read -p "Enter directory path: " path
# check directory exists
if [ ! -d "$path" ]; then
	echo "Directory path doesn't exist!"
	exit	
fi

###### Search
echo -e "\nResults:"
#-r :recursively inside directory
#-n :line number
matches=$(grep -rn "TODO" "$path") 
if [ "$matches" ]; then
	echo "$matches"
	#-l :count lines
	echo "Total matches: $( echo "$matches" | wc -l)"
else
	echo "None"
fi

