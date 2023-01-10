def palindrome?(string)
  string == string.reverse
end

def array_palindrome?(array)
  array.to_s
  array == array.reverse
end

def array_or_string_palindrome?(array_or_string)
  array_or_string.to_s
  array_or_string == array_or_string.reverse
end

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

# puts array_palindrome?(%w[m a d a m]) == true
# puts array_palindrome?(%w[M a d a m]) == false
# puts array_palindrome?(%w[m a d a m i ' m a d a m]) == false
# puts array_palindrome?(%w[3 5 6 6 5 3]) == true

puts array_or_string_palindrome?('madam') == true
puts array_or_string_palindrome?('Madam') == false          # (case matters)
puts array_or_string_palindrome?("madam i'm adam") == false # (all characters matter)
puts array_or_string_palindrome?('356653') == true

puts array_or_string_palindrome?(%w[m a d a m]) == true
puts array_or_string_palindrome?(%w[M a d a m]) == false
puts array_or_string_palindrome?(%w[m a d a m i ' m a d a m]) == false
puts array_or_string_palindrome?(%w[3 5 6 6 5 3]) == true