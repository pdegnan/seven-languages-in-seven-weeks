sio := File standardInput();

numberToGuess := Random value(100) floor

numberOfTries := 10

previousGuess := nil
currentGuess := nil
correctGuess := false

for(i, 1, 10,
    if(i == 1,
        "Take a guess: " println
        currentGuess = sio readLine() asNumber()
        
        ,

        "Take another guess: " println
        currentGuess = sio readLine() asNumber()

        if(currentGuess != numberToGuess ,
            if( ((currentGuess > previousGuess) and (currentGuess < numberToGuess)) or 
                ((currentGuess < previousGuess) and (currentGuess > numberToGuess)),

                "Hotter" println
                ,
                "Colder" println
            )
            ,
            correctGuess = true
            break
        )
    )

    if(currentGuess == numberToGuess, 
        correctGuess =  true
        break
        ,
        previousGuess = currentGuess
    )
)

if (correctGuess == true,
    "That's the number!" println
    , 
    "Sorry. The number was " .. numberToGuess println
    )