# My Solution:
# def story_maker(words)
#   puts "Do you #{words[1]} your #{words[2]} #{words[0]} #{words[3]}? That's hilarious!"
# end

# def prompt(string)
#   print "=> #{string}"
# end

# words = []

# prompt("Enter a noun: ")
# words << gets.chomp
# prompt("Enter a verb: ")
# words << gets.chomp
# prompt("Enter an adjective: ")
# words << gets.chomp
# prompt("Enter an adverb: ")
# words << gets.chomp

# story_maker(words)

# LS Solution:
print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample