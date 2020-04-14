#!/bin/bash -x

shopt -s extglob
#variable


passwordPat="^(?=.*[A-Z])(?=.*[0-9])(?=.*[A-Za-z0-9@#!$%^&*()_-]{8,})[A-Za-z0-9]{1,}[@#!$%^&*()_-][A-Za-z0-9]{1,}$"
mobilePat="[0-9]{2} [0-9]{10}"
emailPat="[\w\d]{1,}[.\-#!]?[\w\d]{1,}@[\w\d]{1,}.(com|co|net).?([a-z]{2})?"
namePat="^[A-Z][a-z]{2,}$"
		
function nameValidation() {
	word=$1
	pat=$2
	if [[ $word =~ $pat ]]
	then
		echo "Proper Format"
	else
		echo "Not Proper Format"
	fi
}

Echo "Welcome to user registration"
echo "Enter your first name"
read first
nameValidation $first $namePat
echo "Enter your last name"
read last
nameValidation $last $namePat
echo "Enter your emailId"
read email
emailValidation $email $emailPat
echo "Enter your mobile no"
read mobile
mobileValidation $mobile $mobilePat
echo "Enter your password"
read password
passwordValidation $password $passwordPat