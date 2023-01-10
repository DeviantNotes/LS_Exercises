p ">> Do you want me to print something? (y/n)"
answer = gets.chomp.downcase

if answer == "y"
  p "something"
else
  p "nothing"
end
