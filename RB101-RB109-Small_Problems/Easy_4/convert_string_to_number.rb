require 'pry'

def string_to_integer(string)
  str_arr = string.split('')
  # idx = 0
  int_arr = str_arr.each do |n|
    case n
    when '0'
      0
    when '1'
      1
    when '2'
      2
    when '3'
      3
    when '4'
      4
    when '5'
      5
    when '6'
      6
    when '7'
      7
    when '8'
      8
    when '9'
      9
    end
  # idx += 1
  end
  binding.pry
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
