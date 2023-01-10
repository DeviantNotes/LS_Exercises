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

USER = 'Sam'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_try = gets.chomp
  break if user_try == USER
  puts '>> Invalid user!'
end

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'
