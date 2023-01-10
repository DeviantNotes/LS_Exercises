require 'pry'
def prompt(string)
  print "==> #{string} "
end

def calculate(number1, number2)
  OPERATIONS.each do |operation|
    puts "==> #{number1} #{operation} #{number2}
      = #{eval(number1 + operation + number2)}"
  end
end

OPERATIONS = %w[+ - * / % **]

prompt('Enter the first number:')
number1 = gets.chomp
prompt('Enter the second number:')
number2 = gets.chomp

calculate(number1, number2)
