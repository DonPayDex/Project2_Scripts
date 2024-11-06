#!/bin/bash
# This script prompts the user to input a username, password, and group name for the new user

# Prompt for username, password, and group name
read -p "Enter Username: " user
read -sp "Enter Password: " pwrd
echo
read -p "Enter Group Name: " group

# Request sudo privileges once at the beginning
echo "Please enter your sudo password to proceed."

# Create the user with a home directory and bash shell
sudo useradd -m -s /bin/bash "$user"

# Set the user's password
echo "$user:$pwrd" | sudo chpasswd

# Create the group if it doesn't already exist
sudo groupadd -f "$group"

# Add the user to the group
sudo usermod -aG "$group" "$user"

# Confirm completion
echo "User $user has been created and added to group $group."
