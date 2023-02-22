require 'pry'

# My Solution:
# def running_total(array)
#   new_array = []
#   new_array[0] = array[0]
#   idx = 1
#   array.each do |num|
#     new_array[idx] = (array[idx].to_i + new_array[idx - 1].to_i)
#     idx += 1
#     break if idx > array.length
#   end
#   new_array.pop
#   new_array
# end

# LS Solution:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# Further Exploration with Enumerable#each_with_object
# def running_total(array)
#   sum = 0
#   (array).each_with_object([]) { |idx, arr| arr.push( sum += idx )}
# end

# Further Exploration with Enumerable#inject
def running_total(array)
  array.inject([]) { |total, num| total << total.last.to_i + num }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []