def search_file filename, regex
    File.open(filename).read.to_a.inject(0) do |n, l| 
        puts "#{n}: #{l}" if l.grep(regex).length > 0 
        n + 1
    end
end

search_file 'hamlet.txt', /death/