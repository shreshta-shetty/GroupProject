#!/bin/bash

# Ask the user for desired password length
read -p "Enter the desired password length: " length

# Check if the input is a number
if ! [[ "$length" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# Characters to choose from (you can customize this set)
chars='A-Za-z0-9@#$%^&*()_+'

# Generate the random password
password=$(cat /dev/urandom | tr -dc "$chars" | fold -w "$length" | head -n 1)

# Display the result
echo "Generated Password: $password"

