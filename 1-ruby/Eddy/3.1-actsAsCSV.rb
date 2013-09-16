#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---

# Modules | http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_modules.html
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

      linecount = 1
      file.each do |row|
        #@csv_contents << row.chomp.split(', ')
        @csv_contents << CsvRow.new(row, @headers)
        linecount = linecount + 1
      end
    end
    
    attr_accessor :headers, :csv_contents
    def initialize
      read 
    end
  end
end

class CsvRow

  def initialize(rowText, headers)
    @row   = {}
    cols   = headers.dup
    values = rowText.chomp.split(', ')
    values.each do |colValue|
      colName = cols.shift
      @row[colName.to_sym] = colValue
    end
  end

  # Kernel.method_missing | http://ruby-doc.org/core-1.8.7/Kernel.html#method-i-method_missing
  def method_missing(methodId)
    puts @row[methodId] if @row.has_key? methodId
  end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
p m.csv_contents
m.csv_contents.each { |row| row.one }

