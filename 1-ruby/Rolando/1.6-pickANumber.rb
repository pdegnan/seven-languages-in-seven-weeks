n = rand(25)
i = 0
x = 0
puts 'You can\'t leave until you guess the number I\'m thinking of between 1 and 25.'
puts 'Make your first guess:'
while i == 0
    x = x + 1

    u = gets
    u = u.to_i
    if u <= 0 || u > 25
        puts 'Invalid choice. Guess again:'
    else 
        if u == n
            puts 'You\'re correct. It took you ' + x.to_s + ' guesses.'
            i = 1
        elsif u < n
            puts 'You guessed too low. Guess again:'
        else
            puts 'You guessed too high. Guess again:'
        end
    end
end

