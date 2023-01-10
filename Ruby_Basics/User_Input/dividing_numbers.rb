def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp
  unless valid_number?(numerator)
    puts 'Please enter a valid number.'
    next
  end
  break
end

loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp
  unless valid_number?(denominator) && denominator.to_i != 0
    puts 'Please enter a valid non-zero number.'
    next
  end
  break
end

answer = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} equals #{answer}."

