#!/bin/bash

#To Know the username
username=$(whoami)

#To Know the user ID 
user_id=$(id -u)

#To Know the group ID
group_id=$(id -g)

#To Know the home directory
home=$(echo $HOME)

#To Know the shell being used
shell=$(echo $SHELL)

#Below is to display the User info
echo "Username: $username"
echo "User ID: $user_id"
echo "Group ID: $group_id"
echo "Home Directory: $home"
echo "Shell being used: $shell"

