# define a range, 1-given number
# create a counter for each 3 and 5, increment +3/+5
# check if counter is less than the number, if so add it to an array
# add together array and return

require 'pry'
require 'pry-doc'

# My Solution (did not pass last test):
def multisum(num)
  threes = 3
  fives = 5
  range = 1..num
  multiples = []
  loop do
    multiples << threes if range.include?(threes)
    multiples << fives if range.include?(fives)
    threes += 3
    fives += 5
    binding.pry
    break unless range.include?(threes) && range.include?(fives)
  end
  multiples.sum
end

# LS Solution:
# def multiple?(number, divisor)
#   number % divisor == 0gi
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end

# puts multisum(3) == 3
# puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168