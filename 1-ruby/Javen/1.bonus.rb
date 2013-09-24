secretNumber = rand(10)
correctAnswer = false

while correctAnswer == false
    puts "Guess a number:"
    userGuess = gets.to_i
    if userGuess == secretNumber
        puts "That's it!"
        correctAnswer = true
    elsif userGuess > secretNumber
        puts "Too high!"
    elsif userGuess < secretNumber
        puts "Too low!"
    else
        puts "Invalid number. Please enter an integer."
    end 

end
