# First solution:
#
# numbers = Array(1..99)
# numbers.each { |num| puts num if num.even? }

numbers = []
1.upto(99) { |num| numbers << num }
even_numbers = numbers.select { |num| num.even? }
puts even_numbers