require 'pry'

def triangle(num, orientation = 4)
  case orientation
  when 1
    top_left(num)
  when 2
    top_right(num)
  when 3
    bottom_left(num)
  when 4
    bottom_right(num)
  end
end

def top_left(num)
  spaces = 0
  asterisks = num
  num.times do
    puts ('*' * asterisks) + (' ' * spaces)
    spaces += 1
    asterisks -= 1
  end
end

def top_right(num)
  asterisks = num
  spaces = 0
  num.times do
    puts (' ' * spaces) + ('*' * asterisks)
    asterisks -= 1
    spaces += 1
  end
end

def bottom_left(num)
  spaces = num - 1
  asterisks = 1
  num.times do
    puts ('*' * asterisks) + (' ' * spaces)
    spaces -= 1
    asterisks += 1
  end
end

def bottom_right(num)
  spaces = num - 1
  asterisks = 1
  num.times do
    puts (' ' * spaces) + ('*' * asterisks)
    spaces -= 1
    asterisks += 1
  end
end

triangle(5, 1)
triangle(9, 1)
triangle(5, 2)
triangle(9, 2)
triangle(5, 3)
triangle(9, 3)
triangle(5, 4)
triangle(9, 4)
