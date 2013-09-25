# Ask for a number and check it against a random number
#
def ask
  puts "Guess a number from 1 - 10."
  number = gets
  check_number(number)
end

def check_number(num)
  n = num.to_i
  r = rand(10)
  if n > r
    puts "That number was too high..."
  elsif n < r
    puts "That number was too low..."
  else
    puts "You guessed correct!"
  end
  
  puts "#{n}/#{r}"
  
  ask
  
end

ask
#
# unstable loop!