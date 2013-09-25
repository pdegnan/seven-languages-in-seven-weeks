#!/usr/bin/env ruby

=begin
If you’re feeling the need for a little more, write a program that picks a random number. 
Let a player guess the number, telling the player whether the guess is too low or too high.
=end

chosenNumber = rand(10)
begin
	puts "Can you guess the number?"
	userInput = gets.to_i

	if (userInput < chosenNumber)
		puts "Too low"
	elsif (userInput > chosenNumber)
		puts "Too High"
	elsif (userInput == chosenNumber)
		puts "You got that right!"
	end
end until chosenNumber == userInput

=begin 
gets.chomp removes the \n at the end of the user input string
=end