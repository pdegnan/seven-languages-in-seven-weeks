# Make my array:

a = [ 'Captain America', 'Wolverine', 'Thor', 'Emma Frost', 'Professor X', 'Beast', 'Iron Man', 'The Hulk', 'Ant Man', 'Daredevil', 'Hawkeye', 'Cyclops', 'Cassandra Nova', 'The Punisher', 'Kitty Pryde', 'The Thing' ]

# Using each

puts
puts 'Using each: '
a.each { |i| p a[a.find_index(i), 4] if a.find_index(i) % 4 == 0 }

# Using each_slice

puts
puts 'Using each_slice: '
a.each_slice(4) { |a| p a }

puts