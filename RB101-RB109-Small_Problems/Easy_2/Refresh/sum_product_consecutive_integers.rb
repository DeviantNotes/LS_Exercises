def computation(num, operation)
  case operation
  when 's'
    sum(num)
  when 'p'
    product(num)
  end
end

# def sum(num)
#   total = 0
#   num.times { |idx| total += idx + 1 }
#   total
# end

# def product(num)
#   total = 1
#   num.times { |idx| total *= idx + 1}
#   total
# end

def sum(num)
  (1..num).inject(:+)
end

def product(num)
  (1..num).inject(:*)
end

def prompt(string)
  puts ">> #{string}"
end

prompt("Please enter an integer greater than 0:")
num = gets.chomp.to_i

prompt("Enter 's' to computer the sum, 'p' to compute the product.")
operation = gets.chomp.downcase

total = computation(num, operation)
prompt("The #{operation == 's' ? 'sum' : 'product'} of the integers between 1 and #{num} is #{total}")
