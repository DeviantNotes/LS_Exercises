def prompt(string)
  puts "==> #{string}"
end

numbers = []

6.times do |idx|
  prompt("Enter number #{idx + 1}:")
  numbers << gets.chomp.to_i
end

if numbers[0..4].include?(numbers[5])
  puts "The number #{numbers[5]} appears in #{numbers[0..4]}."
else
  puts "The number #{numbers[5]} does not appear in #{numbers[0..4]}."
end
