a = [ 'Captain America', 'Wolverine', 'Thor', 'Emma Frost', 'Professor X', 'Beast', 'Iron Man', 'The Hulk', 'Ant Man', 'Daredevil', 'Hawkeye', 'Cyclops', 'Cassandra Nova', 'The Punisher', 'Kitty Pryde', 'The Thing' ]

puts "\nUsing each: "
a.each { |i| p a[a.find_index(i), 4] if a.find_index(i) % 4 == 0 }

puts "\nUsing each_slice: "
a.each_slice(4) { |i| p i }

puts