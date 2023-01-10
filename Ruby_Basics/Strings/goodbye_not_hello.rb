=begin
greeting = 'Hello!'

greeting = 'Goodbye!'

puts greeting
=end

greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting
