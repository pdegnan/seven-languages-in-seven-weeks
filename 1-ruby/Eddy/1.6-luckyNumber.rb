
# Class.method
# IO.gets | http://ruby-doc.org/core-1.8.7/IO.html#method-i-gets
# String.chomp | http://ruby-doc.org/core-1.8.7/String.html#method-i-chomp
# String.to_i | http://ruby-doc.org/core-1.8.7/String.html#method-i-to_i
# String.*, String.+ | http://ruby-doc.org/core-1.8.7/String.html#method-i-2A

lucky_number = rand(10)

begin # start a begin block

	# ruby does method chaining very well
	# This reads a line from STDIN, removes trailing LF
	# and converts input to int for comparison
	guess = gets.chomp.to_i

	print "Your guess is #{guess}, which is "
	puts "Too LOW!"  if guess <  lucky_number
	puts "Too HIGH!" if guess >  lucky_number
	puts "Correct!"  if guess == lucky_number

end until guess == lucky_number

puts "Run me again"     + # concatenate strings
	(" and again" * 10) + # and copy ' and again' * 10
	' ...'