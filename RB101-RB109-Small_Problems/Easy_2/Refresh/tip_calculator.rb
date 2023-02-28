require 'pry'

def tip_amount(bill, tip_percent)
  bill * (tip_percent * 0.01)
end

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

puts "The tip is $#{sprintf('%.2f', tip_amount(bill, tip_percent).round(2))}"
puts "The total is $#{sprintf('%.2f', bill + tip_amount(bill, tip_percent).round(2))}"