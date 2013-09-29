class Fixnum

	define_method('+='){
		|value|
		self + value
	}

	# throws syntax error
	def +=(value)
		self + value
	end

end

x = 5
x += 10

puts x