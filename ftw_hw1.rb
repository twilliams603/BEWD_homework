##       HOMEWORK 1       ##

# Defines the "play" variable
play = "yes" # If play == "y", then the user plays. If play == "n", the game ends.

while play == "yes"

	# Defines the remaining variables
	rand_num = 0 # the random number
	guess = 0 # user's guess at random number
	attempt_max = 5 # number of attempts afforded to the user
	attempt = 1 # number of the current attempt
	max = 10 # maximum value for random number
	min = 1 # minimum value for random number
	answer = "wrong" # indicates whether or not the user got it right or wrong

	# Welcomes the user.
	puts ("\nWelcome to my guessing game! Hope you're a good guesser.")
	puts ("I'm going to think of a number, and you'll have limited number of guesses to get it right.")

	# User enters the maximum and minimum range of the random number.
	puts ("\nBefore I think of the random number, you will need to choose a range for it.")
	puts ("Enter the minimum value:")
	min = gets.chomp.to_i
	puts ("Enter the maximum value:") 
	max = gets.chomp.to_i
	
	# Generates random number
	rand_num = rand(max - min + 1) + min
	puts ("I have now thought of a random number between #{min} and #{max}.")

	# User enters the number of attempts they will get.
	puts ("How many attempts would you like to guess it?")
	attempt_max = gets.chomp.to_i

	# User attempts to guess the number.
	while attempt <= attempt_max and answer == "wrong"
		puts ("Guess number #{attempt}:")
		guess = gets.chomp.to_i
		if guess == rand_num
			answer = "right"
			puts ("NAILED IT!!!")
		elsif guess < rand_num
			puts ("Too low!")
			attempt += 1
		else
			puts ("Too high!")
			answer = "wrong"
			attempt += 1
		end
	end

	# User receives this message upon losing.
	if answer == "wrong"
		puts ("You lose! I win! Womp womp!")
		puts ("The number was #{rand_num}.")
	end

	# Asks user if they would like to play again.
	puts ("Would you like to play again? <yes/no>")
	play = gets.chomp
	if play == "yes"
		puts ("Hooray!")
	else
		puts("Aw, shucks...")
	end
end