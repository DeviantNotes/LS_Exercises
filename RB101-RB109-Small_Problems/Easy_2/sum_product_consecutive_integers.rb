def prompt(string)
  puts ">> #{string}"
end

def consecutive_product(num)
  (1..num.to_i).inject(:*)
end

def factorial(num)
  (1..num.to_i).inject(:+)
end

def chosen_operation(num, choice)
  if choice == 's'
    puts factorial(num)
  elsif choice == 'p'
    puts consecutive_product(num)
  end
end

def valid_number?(num)
  num == num.to_i.to_s && num.to_i != 0
end

def valid_choice?(choice)
  choice == 's' || choice == 'p'
end

num = ''
choice = ''

loop do
  prompt("Please enter an integer greater than 0:")
  num = gets.chomp
  valid_number?(num) ? break : prompt("Please enter a valid number.")
end
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  choice = gets.chomp
  valid_choice?(choice) ? break : prompt("Please enter a valid choice.")
end

chosen_operation(num, choice)
