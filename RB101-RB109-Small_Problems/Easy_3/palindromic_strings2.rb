require 'pry'

def real_palindrome?(string)
  arr = string.downcase.scan(/\w*/)
  new_string = ''
  arr.each { |word| new_string << word }
  new_string == new_string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
# binding.pry