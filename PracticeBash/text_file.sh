#!/bin/bash

#To Provide file argument.
if [ -z "$1" ]; then
	    echo "Usage: $0 <filename>"
	    exit 1
fi

#To count lines, words, and characters - need to use wc
line_count=$(wc -l < "$1")
word_count=$(wc -w < "$1")
char_count=$(wc -m < "$1")

# Display the counts
echo "File located: $1"
echo "Lines are: $line_count"
echo "Words are: $word_count"
echo "Characters are: $char_count"

