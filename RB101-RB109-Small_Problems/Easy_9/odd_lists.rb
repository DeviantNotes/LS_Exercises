# Solution 1:
# def oddities(array)
#   oddities = []
#   array.each_index do |idx|
#     oddities << array[idx] if idx.even?
#   end
#   oddities
# end

# def evenities(array)
#   oddities = []
#   array.each_index do |idx|
#     oddities << array[idx] if idx.odd?
#   end
#   oddities
# end

# Solution 2:
# def oddities(array)
#   oddities = []
#   idx = 0
#   loop do
#     break if array.empty?
#     oddities << array[idx] 
#     idx += 2
#     break if idx >= array.size
#   end
#   oddities
# end

# Solution 3:
# def oddities(array)
#   idx = 0
#   oddities = []
#   loop do
#     break if array.empty?
#     oddities << array.fetch(idx)
#     idx += 2
#     break if idx >= array.length
#   end
#   oddities
# end

# Solution 4:
def oddities(array)
  array.select { |element| array.index(element).even? }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
