require 'pry'
require 'pry-doc'

# My Solution:
# def multisum(num)
#   threes = 3
#   fives = 5
#   range = 1..num
#   multiples = []
#   loop do
#     multiples << threes if threes <= num
#     multiples << fives if fives <= num
#     threes += 3
#     fives += 5
#     break if threes >= num && fives >= num
#   end
#   multiples.uniq.sum
# end

# LS Solution:
# def multiple?(number, divisor)
#   number % divisor == 0
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

# Further Exploration:
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(num)
  (1..num).inject(0) do |sum, n| 
    multiple?(n, 3) || multiple?(n, 5) ? sum + n : sum
  end
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
