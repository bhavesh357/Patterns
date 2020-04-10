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

function emailValidation() {
  email=$1
  pat="[a-z]{1}([A-Za-z0-9]{1,}|[A-Za-z0-9]{1,}[-.]{1}[A-Za-z0-9]{1,})[A-Za-z0-9]{1}@[a-z0-9]{1,}.(com|net).?(au|com)?"
  if [[ $email =~ $pat ]]
  then
    echo good email
  else
    echo enter proper email
  fi
}

Echo "Welcome to user registration"
#echo "Enter your first name"
#read first
#nameValidation $first
#echo "Enter your last name"
#read last
#nameValidation $last
echo "Enter your emailId"
read email
emailValidation $email