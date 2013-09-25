#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---

# begin roshow: 
# Create a new class from Hash, so that overriding method_missing
# isn't too epic a pain. It also, inadvertantly, creates a new
# type of Hash class with dot notation syntax. Finally,
# it has all the methods of Hash, including the super-awesome zip.

class ModHash < Hash
  def method_missing name
    self[name.to_s]
  end
end

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

    # begin roshow: 
    # each method to return an object for every row, where
    # { column's header => row's value at this column } by using
    # the super-awesome zip thing in the Hash object.

    def each &block
      @csv_contents.each do |row|
        block.call ModHash[@headers.zip row] #super-awesome zip thing.
      end
    end
  end
end

class JLA 
  include ActsAsCsv
  acts_as_csv
end

m = JLA.new
puts
# begin roshow:
# The goal syntax, in action:
m.each {|i| puts i.first_name}
puts

