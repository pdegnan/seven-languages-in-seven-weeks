
// a little syntaxical sugar for Numbers
Number to := method(n,
	Range clone setRange(self, n)
)

// our lucky number, numeral ceiling we actually get a 1-100 range
luckyNumber := Random value(100) ceil

diff := nil // initialize the difference variable

// Using syntax sugar to repeat 10 times and provide a loop counter
1 to(10) foreach(numberOfTry,
	"Guess ##{numberOfTry}, What number am I thinking about?: " interpolate print
	guess := File standardInput readLine asNumber
	"You guessed #{guess} which is" interpolate print
	if(guess == luckyNumber, " CORRECT!" println break)
	if(diff == nil,
		// first guess
		" wrong!" println,
		// provide hint
		((luckyNumber-guess) abs <= diff) ifTrue(" getting hotter!" println)
		((luckyNumber-guess) abs > diff) ifTrue(" getting colder!" println)
		)
	diff = (luckyNumber - guess) abs
)
