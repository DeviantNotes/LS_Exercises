print "What is your age?  "
age = gets.chomp.to_i
print "At what age would you like to retire?  "
retire = gets.chomp.to_i

t = Time.now.year
puts "It's #{t}. You will retire in #{(retire - age) + t}."
puts "You have only #{retire - age} years of work to go!"