require 'pry'

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  total = 0
  running = num
  power.times { |_| total += multiply(running, num) }
  total
end

puts square(5) == 25
puts square(-8) == 64

puts power(2, 3)
puts power(3, 3)