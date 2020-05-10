#!/usr/bin/env bash
# File: guessinggame.sh

function guess {
	actual=$(ls -l | grep '^-' | wc -l)
	local found_ans=false
	while [[ $found_ans = 'false' ]]
	do
		echo 'Enter your guess:'
		read prediction
		if [[ $prediction -lt $actual ]]
		then
			echo 'Your guess is less than what is true'
		elif [[ $prediction -gt $actual ]]
		then
			echo 'Your guess is more than what is true'
		else
			echo 'You have correctly predicted the number of files in your current directory'
			found_ans=true
		fi
	done
}

echo 'Guess the number of files in your current directory'
guess 
