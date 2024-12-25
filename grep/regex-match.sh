#!/bin/bash

###### Start msg
echo -e "Email addresses search: \n"

###### File
read -p "Enter file path with file name: " file
if [ ! -f "$file" ]; then 
	echo "File doesn't exist."
	exit
fi

###### Search
echo -e "\nResults:"
#-E :regular expression
#-o :output only the matched text
matches=$(grep -E -o "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}" "$file")
if [ "$matches" ]; then
	echo "$matches"
	#-l :count lines
	echo "Total matches: $( echo "$matches" | wc -l)"
else
	echo "None"
fi

