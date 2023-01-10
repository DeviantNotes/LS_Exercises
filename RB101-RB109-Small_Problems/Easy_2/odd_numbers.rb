# First solution:
#
# numbers = Array(1..99)
# numbers.each { |num| puts num if num.odd? }

numbers = []
1.upto(99) { |num| numbers << num }
odd_numbers = numbers.select { |num| num.odd? }
puts odd_numbers