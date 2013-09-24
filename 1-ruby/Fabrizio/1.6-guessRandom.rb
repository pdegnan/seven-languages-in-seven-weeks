random = rand(10)
guess = gets.to_i

if random > guess
  puts "nope to Low!"
end

if random < guess
  puts "nope to Hight!"
end

if random == guess
  puts "Correct!"
end

=begin
Notes:
I need to get used to the nicer syntax:
puts "Correct!" if random < guess
=end