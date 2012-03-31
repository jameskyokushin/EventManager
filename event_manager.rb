# Dependencies
require "csv"

# Class Definition
class EventManager
  def initialize
    puts "EventManager Initialized."
    filename = "event_attendees.csv"
    @file = CSV.open(filename, { :headers => true, :header_converters => :symbol })
  end

  def print_names
  	@file.each do |line|
  		puts line.inspect
  	end
  end

  def print_numbers
  	@file.each do |line|
  		number = line[:homephone]
        if number.length == 10
          # Do Nothing
        elsif number.length == 11
          if number.start_with?("1")
            number = number[1..-1]
          else
            number = "0000000000"
          end
        else
          number = "0000000000"
        end
  		clean_number = number.delete("-")
  		puts clean_number
      puts number
	end
  end
end

# Script
manager = EventManager.new
# manager.print_names
manager.print_numbers

