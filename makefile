# makefile to make a README.md
# README.md is made from this and will not be made by hand

README.md: guessinggame.sh

	# The title of the project
	touch README.md
	echo "Project Title: Bash Script - Guess the Number of Files in this Directory" >> README.md
	echo "Author: A. Young"
	echo "" >> README.md

	# The date and time at which make was run
	echo "make was run on:" >> README.md
	date >> README.md
	echo "" >> README.md

	# The number of lines of code contained in guessinggame.sh
	echo "The number of lines of code in guessinggame.sh is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
