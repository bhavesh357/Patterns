#!/bin/bash -x

shopt -s extglob
#variable
par=""

function nameValidation() {
	name=$1
	pat="^[A-Z][a-z]{2,}$"
	if [[ $name =~ $pat ]]
	then
		echo "Proper Format"
	else
		echo "Enter Proper Name"
	fi
}
Echo "Welcome to user registration"
echo "Enter your first name"
read first
nameValidation $first
echo "Enter your first name"
read last
nameValidation $last
