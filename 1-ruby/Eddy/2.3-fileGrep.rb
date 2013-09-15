
unless ARGV.length == 2
	puts "Usage: #{$0} <term to grep> <filename>"
	exit
end

term, filename = ARGV

unless File.readable? filename
	puts "Hey... \"#{filename}\" is not readable! Try again."
	exit
end

rx = Regexp.new term
File.open(filename) do |fd|
	fd.each {
		|line| puts line if line =~ rx
	}
end