p ">> Do you want me to print something? (y/n)"
answer = gets.chomp.downcase

loop do
  p ">> Do you want me to print something? (y/n)"
  
  answer = gets.chomp.downcase
  
  if answer == "y"
    p "something"
    break
  elsif answer == "n"
    p "nothing"
    break
  else
    p "Please try again."
    next
  end
end
