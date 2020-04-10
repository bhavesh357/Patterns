#!/bin/bash -x

shopt -s extglob
#variable

Echo "Welcome to user registration"
echo "Enter your first name"
read first
pat="^[A-Z][a-z]{2,}$"
if [[ $first =~ $pat ]]
then
	echo "Proper Format"
else
	echo "Enter Proper Name"
fi
