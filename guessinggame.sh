#!/usr/bin/env bash
# File: guessinggame.sh

function guess {
	actual=$(ls -al | grep '^-' | wc -l)
	local found_ans=false
	while [[ $found_ans = 'false' ]]
	do
		echo 'Enter your guess:'
		read prediction

		while ! [[ $prediction =~ ^[0-9]+$ ]]
		do
			echo 'You didnot enter number correctly, Try Again.'
			read prediction
		done

		if [[ $prediction -lt $actual ]]
		then
			echo 'Your guess is less than what is true, Try Again.'
		elif [[ $prediction -gt $actual ]]
		then
			echo 'Your guess is more than what is true, Try Again.'
		else
			echo -e 'Congratulations!!!\nYou have correctly predicted the number of files in your current directory'
			found_ans=true
		fi
	done
}

echo 'How many files are there in your current directory?'
guess 
