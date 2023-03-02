# 100.times do |idx|
#   puts idx if idx.odd?
# end

arr = Array.new(100) { |idx| idx }
arr.select! { |element| element.odd? }
puts arr
