#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---
module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end
    
    attr_accessor :headers, :csv_contents
    def initialize
      read 
    end

    def each &block
      val = true
      @csv_contents.each do |row|
        col = 0
        obj = {}
        row.each do |val|
          obj[@headers[col]] = val 
          col = col + 1
        end
        block.call obj
      end
    end
  end
end

class Hash
  def method_missing name, *args
    self[name.to_s]
  end
end

class JLA  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

m = JLA.new
puts
m.each {|i| puts i.first_name}
puts
m.each {|i| puts i.last_name}
puts
m.each {|i| puts i.age}
puts
#puts m.headers.inspect
#puts
#puts m.csv_contents.inspect
#puts

