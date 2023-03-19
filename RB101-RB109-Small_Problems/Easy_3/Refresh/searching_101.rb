arr = []
counter = %w[1st 2nd 3rd 4th 5th last]
6.times do |idx|
  puts "==> Enter the #{counter[idx]} number:"
  arr << gets.chomp.to_i
end

last = arr.pop

if arr.include?(last)
  puts "The number #{last} appears in #{arr}."
else
  puts "The number #{last} does not appear in #{arr}."
end