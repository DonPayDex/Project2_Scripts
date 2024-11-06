#!/bin/bash
#This will prompt the user to input the name of the file
read -p "Enter file name: " filename
if [ -f "$filename" ]
then
#This will prompt the user to choose a word for the script to locate and print
	read -p "Enter search keyword: " keyword
	grep -i "$keyword" "$filename" >> /home/don/Documents/pattern.txt
else
	echo "File does not exist"
#If the file does not exist this will print and stop the script
fi
