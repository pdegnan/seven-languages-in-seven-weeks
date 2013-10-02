randomNumber := Random value(101) floor
randomNumber println
"Guess number between 1 and 100." println
10 repeat (
standardIO := File standardInput();
guess := standardIO readLine("Your guess: ") asNumber();
if (guess == randomNumber) then (
    writeln("You guessed it.")
    break
) elseif (guess < randomNumber) then (writeln("Too low")) else (writeln("Too high"))
)
