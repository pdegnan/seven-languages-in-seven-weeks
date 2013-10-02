randomNumber := Random value(101) floor
"Guess number between 1 and 100." println
10 repeat (
userPrompt := File standardInput();
guess := userPrompt readLine("Your guess: ") asNumber();
if (guess == randomNumber) then (
    writeln("You guessed it.")
    break
) elseif (guess < randomNumber) then (writeln("Too low")) else (writeln("Too high"))
)
writeln("The number was ", randomNumber)
