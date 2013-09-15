
# Basic control structures: while, until loops
# http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_expressions.html#S6

i = 0

puts "This is sentence number #{i}" while (i=i+1) <= 2

until i > 4 do
	puts "This is sentence number #{i}"
	i = i + 1
end

# Class: Range
# Method: each
# http://ruby-doc.org/core-1.8.7/Range.html#method-i-each

(i .. i+1).each { |j|
	puts "This is sentence number #{j}"
	i = i + 1
}

# Class: Integer
# Method: times
# http://ruby-doc.org/core-1.8.7/Integer.html#method-i-times

(11 - i).times {
	|j| puts "This is sentence number #{i+j}"
}