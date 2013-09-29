array16 = (1..16).to_a

def print_in_4s(array)
    count = 0
    array.each do |n|
        if count < 3
            print "#{n} "
            count = count + 1
        else
            puts "#{n} "
            count = 0
        end
    end
end

def print_in_4s_shift(array)
    array.each { print array.shift(4).to_s + "\n" }
end

def print_in_4s_each_slice(array)
    array.each_slice(4) { |n| p n }
end

puts "\nPrint contents of array 4 at a time using each() only"
print_in_4s array16

puts "\nPrint contents of array 4 at a time using each and shift()"
print_in_4s_shift((1..16).to_a)

puts "\nPrint contents of array 4 at a time using each_slice()"
print_in_4s_each_slice(array16)