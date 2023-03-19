require 'pry'

def multiply(num1, num2)
  num1 * num2
  binding.pry
end

puts multiply([5, 3, 7], 3)
puts multiply(5, 3) == 15
