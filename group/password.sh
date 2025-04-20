#!/bin/bash
echo "Random password :$RANDOM  "

#Generate a random number of password based on user given input

read -p "Enter a lenght of password(int): " pass

echo "Your generate password is :"
password= tr -dc 'A-Za-z0-9' </dev/urandom | head -c "$pass" 
