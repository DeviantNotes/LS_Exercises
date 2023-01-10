def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil
integer2 = nil

loop do
  puts '>> Please enter a positive or negative integer:'
  integer1 = gets.chomp
  unless valid_number?(integer1)
    puts 'Invalid input.  Only non-zero integers are allowed'
  end
  if integer1.to_i.positive?
    puts ">>Please enter a negative integer:"
  else
    puts ">>Please enter a positive integer:"
  end
  integer2 = gets.chomp
  unless valid_number?(integer2)
    puts 'Invalid input.  Only non-zero integers are allowed'
  end
  break if (integer1.to_i.positive? && integer2.to_i.negative?) ^ 
(integer1.to_i.negative? && integer2.to_i.positive?)
  puts "Sorry.  One integer must be positive, one must be negative."
end

answer = integer1.to_i + integer2.to_i

puts "#{integer1} + #{integer2} = #{answer}"
