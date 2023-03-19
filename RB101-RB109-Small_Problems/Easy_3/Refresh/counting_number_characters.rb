print "Please write a word or multiple words: "
input = gets.chomp

size = input.delete(" ").size

puts "There are #{size} characters in \"#{input}\"."
