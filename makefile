#!/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game\n`date`\n`wc -l guessinggame.sh | egrep -o '[0-9]+'`" > README.md

clean:
	rm README.md
