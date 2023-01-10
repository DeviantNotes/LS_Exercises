#Password = "Password123"

#loop do
#  puts ">> Enter your password:"
#  password = gets.chomp
#  if password == Password
#    puts "Welcome!"
#    break
#  else
#    puts "Invalid password!"
#    next
#  end
#end


PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'
