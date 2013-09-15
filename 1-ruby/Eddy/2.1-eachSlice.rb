
array     = (1 .. 16).to_a
array_dup = array.dup  # shallow copy

# Using array subsets
puts "Using subsets..."
array[0, 4].each  { |i| print "#{i}," }; puts
array[4, 4].each  { |i| print "#{i}," }; puts
array[8, 4].each  { |i| print "#{i}," }; puts
array[12, 4].each { |i| print "#{i}," }; puts

# Next line does 4 things:
# 1. Cuts an array slice from the beginning of length of 4 (mutator, destructive operation)
# 2. Join the slice elements into a string delimited by ','
# 3. Outputs the string from #2
# 4. Loops from #1 until the array passes an empty check

puts "Using Array.slice!..."
puts array_dup.slice!(0,4).join(',') until array_dup.empty?

# Enumerable.each_slice | http://ruby-doc.org/core-1.8.7/Enumerable.html#method-i-each_slice

puts "Using each_slice..."
array.each_slice(4).each {
	|n| puts n.join ','
}
puts