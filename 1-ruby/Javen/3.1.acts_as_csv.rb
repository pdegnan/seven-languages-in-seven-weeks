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
            file_csv_contents = []
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(',')

            file.each do |row|
                @csv_contents << CsvRow.new(@headers, row)
            end
        end
    
        attr_accessor :headers, :csv_contents
        def initialize
            read 
        end
    end
end

class CsvRow
    attr_accessor :headers, :contents

    def initialize(headers, fields)
        #Reverse key value pair.
        headers.each_with_index { |value, index|
            if @headers.class != Hash
                @headers = {value => index}
            else
                @headers.merge!(value => index)
            end

        }

        @contents = []
        parsed_fields = fields.chomp.split(',')
        @contents = parsed_fields
    end

    def method_missing name, *args
        index = @headers[name.to_s]
        return @contents[index]
    end
end

class RubyCsv  # no inheritance! You can mix it in
    include ActsAsCsv
    acts_as_csv

    def each()
        csv_contents.each { |value|
            yield value
        }
    end
end

m = RubyCsv.new
m.each {|row| puts row.one}
