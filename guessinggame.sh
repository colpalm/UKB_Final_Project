#!/usr/bin/env bash

# Program to guess the number of visible (non-hidden) files and folders in the current directory
# Will return the number of files and folders shown by the ls command

function guess_number {
	number_files=$(ls | wc -l)
	read -p "Enter a guess for number of files and folders in your current directory: " guess

	while [[ $guess -ne $number_files ]]
	do
		if [[ $guess -gt $number_files ]]
		then
			read -p "$guess is too high! Guess again: " guess
		elif [[ $guess -lt $number_files ]]
		then
			read -p "$guess is too low! Guess again: " guess
		fi
	done
	
	echo "You guessed it! Congratulations!"
	echo "Program Complete."
	
} 

guess_number
