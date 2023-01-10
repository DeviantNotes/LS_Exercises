def multiply(num1, num2)
  num1 * num2
end

def square(num, power = 2)
  multiply(num, num**(power - 1))
end

puts square(5) == 25
puts square(-8) == 64
puts square(2, 3)
