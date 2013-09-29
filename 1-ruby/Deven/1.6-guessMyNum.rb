puts ('Hey you! Pick a number!')
max = gets.to_i
rand_num = rand(max)

correct = false
until correct do
    puts("What number from 0 to #{max} is Ruby thinking of?")
    guess = gets.to_i
    puts('Too high, try again!') if guess > rand_num
    puts('Too low, try again!') if guess < rand_num
    correct = true if guess == rand_num
end
puts("Correct! Ruby was thinking of the number #{rand_num}.")