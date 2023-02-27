def prefix(word)
  word.start_with?('a', 'e', 'i', 'o', 'u') ? 'an' : 'a'
end

def prompt(word)
  puts "Please enter #{prefix(word)} #{word}:"  
end

def madlib(noun, verb, adverb, adjective)
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

prompt('noun')
noun = gets.chomp
prompt('verb')
verb = gets.chomp
prompt('adverb')
adverb = gets.chomp
prompt('adjective')
adjective = gets.chomp

madlib(noun, verb, adverb, adjective)