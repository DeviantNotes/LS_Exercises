def count_characters(phrase)
  phrase.delete(" ").length
end

print "Please write a word or multiple words: "
phrase = gets.chomp

puts "There are #{count_characters(phrase)} characters in \"#{phrase}\"."
