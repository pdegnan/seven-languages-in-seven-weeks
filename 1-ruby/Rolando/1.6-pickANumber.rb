limit = 20

def pick_a_number(i, n, x)
    puts "You can\'t leave until you guess the number I\'m thinking of between 1 and #{n}. Make your first guess:" unless x > 1
    u = gets
    u = u.to_i
    if u == i
        puts "You\'re correct. It took you #{x} guesses."
    else
        if u <= 0 || u > n
            puts 'Invalid choice. Guess again:'
        else
            g = 'low'
            g = 'high' unless u < i
            puts "You guessed too #{g}. Guess again:"
        end
        pick_a_number(i, n, x + 1)
    end
end

pick_a_number(rand(limit), limit, 1)

