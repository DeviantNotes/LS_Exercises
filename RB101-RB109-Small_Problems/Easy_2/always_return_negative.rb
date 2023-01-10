# My Solution:
# def negative(num)
#   if num.zero? || num.negative?
#     num
#   else
#     num * -1
#   end
# end

# LS Solution:
# def negative(number)
#   number > 0 ? -number : number
# end

# LS Short Solution:
def negative(number)
  -number.abs
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby