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
      number = clean_number(line[:homephone])
    end

  end

  def clean_number(original)
    @file.each do |line|
      number = line[:homephone]
      clean_number = number.delete("-")
      puts clean_number
    end
    return self
  end
end

# Script
manager = EventManager.new
# manager.print_names
manager.print_numbers