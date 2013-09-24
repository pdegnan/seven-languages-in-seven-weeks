def pick_a_number i, x
    # Get user's guess and turn it into an integer.
    # Non-valid integers return 0, which is an invalid guess.   
    u = gets.to_i

    # Check if correct, if so, tell them how many guesses it took.
    if u == i
        puts "You\'re correct. It took you #{x} guess#{'es' unless x == 1}."

    # Check to see if the guess is high, low or invalid, prompt for a new one.
    else
        # Validate
        if u <= 0
            puts 'Invalid choice. Guess again:'

        # Tell the user if the guess is high or low.
        else
            puts "You guessed too #{u > i ? 'high' : 'low'}. Guess again:"
        end

        # Call recursive FUNction.
        pick_a_number i, x + 1
    end
end

# Set limit.
limit = 25

# Initial prompt.
puts "\e[H\e[2J"
puts "To leave, guess the number I\'m thinking of between 1 and #{limit}."
puts 'Make your first guess:' 

# Run the game.
pick_a_number rand(limit) + 1, 1

