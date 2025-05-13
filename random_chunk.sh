#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file> <delimiter>"
    exit 1
fi

file=$1
delimiter=$2

# Check if the content file with chunks delimited exists
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

# Read the file, split by the delimiter, and store the chunks in 'chunks' array
# perl reads the entire file and replaces the ==== delimiter with a null character (\x00).
# mapfile (or readarray) is used to read from the output of perl.
# The -d $'\0' option tells mapfile to split the input based on the null character (\0), 
#   which is what perl used to replace the delimiter.
mapfile -d $'\0' -t chunks < <(perl -0777 -pe "s/$delimiter/\x00/g" "$file")

# Get the total number of chunks
total_chunks=${#chunks[@]}

# Select a random chunk index
random_index=$(( RANDOM % total_chunks ))


# Output the random chunk, pretty formatted at 60 characters length
printf " ${chunks[$random_index]}" | fmt -w 60

echo -e '\n'

printf "\n ${random_index}° of ${total_chunks} wisdom chunks (from ${file}) \n" 

echo
