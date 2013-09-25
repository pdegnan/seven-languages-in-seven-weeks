#Phrase to search for.
search_phrase = "sugar"

search = Regexp.new(search_phrase)
results = []
line_number = 0

file_name = 'greptext.txt'

File.open(file_name) { |file|
    file.each_line { |line|
        if line.match(search)
            results[line_number] = line
        end
        line_number = line_number + 1
    }
}

puts "Results: "
results.each_with_index { |result_line, result_line_number|
    if result_line !=  nil
        print_result = "#{result_line_number}" + ": " + "#{result_line}"
        puts print_result
    end
}