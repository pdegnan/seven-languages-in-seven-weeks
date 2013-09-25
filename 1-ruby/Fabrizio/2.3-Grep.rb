search = Regexp.new("fossano")
results = []
line_number = 0
file_name = '2.3-Grep.txt'

File.open(file_name) do |file|
  file.each_line do |line|
    results[line_number] = line if line.match(search)
    line_number = line_number + 1
  end
end

puts "Results: "
results.each_with_index do |r, n|
  puts "#{n}" + ": " + "#{r}" unless r
end