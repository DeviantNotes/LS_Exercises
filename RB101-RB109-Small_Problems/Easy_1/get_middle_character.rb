# My Solution:
# def center_of(string)
#   length = string.length
#   if length.odd?
#     string[(length / 2)]
#   elsif length.even?
#     string[((length/2) - 1)..(length/2)]
#   end
# end

# LS Solution:
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
