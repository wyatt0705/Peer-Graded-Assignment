#! /usr/bin/env bash
# File: guessinggame

function guess {
	local correct_answer = $(ls . | wc -w)

	while true
	do
		echo "Enter your guess of number of files in current directory)"
		read number
		if [ $number -lt $correct_answer ]
		then
			echo "Sorry, but your guess is less than the actual number"
		elif [ $number -gt $correct_answer ]
		then
			echo "Sorry, your guess is more than the actual number"
		else
			echo "Great! You got it!"
		break
		fi
	done
}
echo "Guess the number of files in current directory"
guess
