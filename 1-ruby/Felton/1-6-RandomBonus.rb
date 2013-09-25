#!/usr/bin/env ruby

done = false
cpu_number = rand(10) + 1

puts "Guess a number from 1 to 10"

while !done
  n = gets
  puts "Too high, try again" if n.to_i > cpu_number
  puts "Too low, try again" if n.to_i < cpu_number
  if n.to_i == cpu_number
    puts "You got it!!"
    done = true
  end
end
    

  