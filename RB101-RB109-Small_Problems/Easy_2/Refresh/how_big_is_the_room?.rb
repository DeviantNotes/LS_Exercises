def area(length, width)
  length * width
end

def conversion(sq_meters)
  sq_meters * 10.7639
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
puts "The area of the room is #{area(length, width)} square meters (#{conversion(area(length, width))} square feet)."