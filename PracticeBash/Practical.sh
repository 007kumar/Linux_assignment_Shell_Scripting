#!/bin/bash

DIR="/home/user"

# Create directories using -p to know id alreqady exist.
mkdir -p "$DIR/projects/project1"
mkdir -p "$DIR/projects/project2"
mkdir -p "$DIR/projects/project3"
mkdir -p "$DIR/documents"
mkdir -p "$DIR/downloads"

# Print a success message
echo "Below directory has been created.

	/home/user/
	  ├── projects/
	  │   ├── project1/
          │   ├── project2/
          │   └── project3/
	  ├── documents/
	  └── downloads/ "
