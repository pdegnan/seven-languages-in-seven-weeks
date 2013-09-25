if ARGV.length > 0
  filename = ARGV[0]
  phrase = ARGV[1]
end

puts "Searching file: ", filename
puts "For the phrase: ", phrase

f = File.new(filename)
f.each do |line|
    puts "Match found on line #{f.lineno}: ", line if (line[/#{phrase}/])
end