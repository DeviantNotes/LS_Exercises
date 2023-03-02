arr = []
100.times do |idx|
  arr << idx if idx.even? && idx != 0
end

puts arr