#repeats = nil

loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  repeats = gets.chomp.to_i
  if repeats >= 3
    repeats.times do
      puts "Launch School is the best!"
    end
    break
  else
    puts "That's not enough lines."
    next
  end
end
