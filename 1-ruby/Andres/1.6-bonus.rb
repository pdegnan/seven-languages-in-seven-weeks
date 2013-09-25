#Interesting so $ makes variables global
$_bingo = rand(10)
$_guesses = []
def askForGuess
    puts "Your guesses so far are #{$_guesses}" if $_guesses != []
    puts "Guess a number"
    guess = gets.to_i
    $_guesses.push(guess)#added this to tell the user their guesses so far  
    
    (puts "Its higher" ; askForGuess) if guess < $_bingo
    (puts "Its Lower" ; askForGuess) if guess > $_bingo
    puts "Thats it" if guess == $_bingo
end
askForGuess
