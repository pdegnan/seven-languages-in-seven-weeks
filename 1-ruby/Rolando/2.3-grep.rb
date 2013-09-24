File.open('hamlet.txt').read.to_a.inject(0) do |n, l| 
    puts "#{n}: #{l}" if l.grep(/death/).length > 0 
    n + 1
end