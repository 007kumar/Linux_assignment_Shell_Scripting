#!/bin/bash

# To Check if the file exists
if [ ! -e "$1" ]; then
	    echo "File '$1' does not exist."
	        exit 1
fi

# To Check read permission
if [ -r "$1" ]; then
	    echo "The file '$1' has read permission."
    else
	        echo "The file '$1' does NOT have read permission."
fi

# To Check write permission
if [ -w "$1" ]; then
	    echo "The file '$1' has write permission."
    else
	        echo "The file '$1' does NOT have write permission."
fi

# To Check execute permission
if [ -x "$1" ]; then
	    echo "The file '$1' has execute permission."
    else
	        echo "The file '$1' does NOT have execute permission."
fi

