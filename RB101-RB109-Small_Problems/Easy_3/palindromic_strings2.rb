require 'pry'

def real_palindrome?(string)
  string.downcase!
  new_string = string.downcase.delete(" ", "'", ",")
  # string.delete!(" ")
  # string.slice!(/[[:alnum:]]/)
  binding.pry
  new_string == string.reverse
end

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
# binding.pry