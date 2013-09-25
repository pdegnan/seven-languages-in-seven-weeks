#!/usr/bin/env ruby

#Print the contents of an array of sixteen numbers, four numbers at a time, using just each
#http://ruby-doc.org/core-1.8.7/Array.html#method-i-each

#Would ideally like to iterate over the indices!

a = []
16.times {|i| a[i] = i} 
a[0,4].each {|i| print i, ", "}; puts
a[4,4].each {|i| print i, ", "}; puts
a[8,4].each {|i| print i, ", "}; puts
a[12,4].each {|i| print i, ", "}; puts

#Now, do the same with each_slice in Enumerable.
#http://ruby-doc.org/core-1.8.7/Enumerable.html#method-i-each_slice
(0..15).each_slice(4) {|a| p a}

