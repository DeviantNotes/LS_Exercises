# My Solution:
# def triangle(num)
#   spaces = num
#   asterisks = 0
#   loop do
#     puts "#{' ' * spaces}#{'*' * asterisks}"
#     break if asterisks == num
#     spaces -= 1
#     asterisks += 1
#   end
# end

# LS Solution:
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

# Further Exploration
def triangle_top_left(num)
  spaces = 0
  stars = num
  
  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end

def triangle_top_right(num)
  spaces = 0
  stars = num
  
  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

def triangle_bottom_left(num)
  spaces = num - 1
  stars = 1
  
  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces -= 1
    stars += 1
  end
end

def triangle_bottom_right(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def triangle_rotations(num, which_corner = 1)
  case which_corner
  when 1
    triangle_top_left(num)
  when 2
    triangle_top_right(num)
  when 3
    triangle_bottom_left(num)
  when 4
    triangle_bottom_right(num)
  end
end

triangle(5)
triangle(9)

triangle_top_right(5)
triangle_top_right(9)

triangle_rotations(5, 1)
triangle_rotations(5, 2)
triangle_rotations(5, 3)
triangle_rotations(5, 4)
triangle_rotations(9, 1)
triangle_rotations(9, 2)
triangle_rotations(9, 3)
triangle_rotations(9, 4)