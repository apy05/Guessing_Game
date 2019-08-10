# Bash script: Guess the number of files in this directory
# A. Young, 2019-08-09

# function to count the number of files in this current directory
# AT LEAST ONE FUNCTION
function num_files_in_this_directory {
	echo $(ls | wc -l)
}

# call this function into the variable "answer"
answer=$(num_files_in_this_directory)

# Opening at start of program
echo "Guess the number of files in this directory!"

# Read initial input from user
echo "Enter an integer:"
read guess

# Use while loop to keep prompting user for guesses
# this is done as long as the guess is incorrect
# AT LEAST ONE LOOP
while [[ $guess -ne $answer ]]
do
	# the case where the guess is too high
	# while loop prompts the user to guess again
	# AT LEAST ONE IF STATEMENT
	if [[ $guess -gt $answer ]]
	then
		echo "Your guess is too high!"
		echo "Enter an integer:"
		read guess
	fi

	# the case where the guess is too low
	# while loop prompts the user to guess again
	if [[ $guess -lt $answer ]]
	then
		echo "Your guess is too low!"
		echo "Enter an integer:"
		read guess
	fi
done

# the case where the guess is correct
# user is congratulated and program ends
echo "Congratulations!"
echo "You have guessed correctly that the number of files in this directory is $answer."
