def how_old(name = 'Teddy')
  name.empty? ? name = 'Teddy' : name
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

puts "Please enter a name:"
name = gets.chomp
how_old(name)
