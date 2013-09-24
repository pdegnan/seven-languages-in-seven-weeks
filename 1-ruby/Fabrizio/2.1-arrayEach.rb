array = (1..16).to_a


#First part
(0..3).each do |i|
	array[i*4, 4].each do
		|j| print "#{j} "
	end
	puts
end


#Second part
array.each_slice(4).each {
	|n| puts n.join ' '
}
puts