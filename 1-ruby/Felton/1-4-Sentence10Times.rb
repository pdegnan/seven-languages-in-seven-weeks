#!/usr/bin/env ruby

n = 1

while n <= 10
  puts "This is sentence number #{n}"
  n = n + 1
end

# Quicker Way
# http://www.ruby-doc.org/core-2.0.0/Integer.html

1.upto(10) { |i| puts "This is sentence number #{i}"}