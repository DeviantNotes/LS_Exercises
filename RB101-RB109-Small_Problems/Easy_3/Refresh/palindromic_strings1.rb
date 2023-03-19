def palindrome?(string)
  string.reverse == string
end

def palindrome_array?(array)
  array.reverse == array
end

def palindrome_str_arr?(str_or_arr)
  str_or_arr.is_a? String ? palindrome(str_or_arr) : palindrome_array?(str_or_arr)
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts palindrome_array?(%w[m a d a m]) == true
puts palindrome_array?(%w[M a d a m]) == false          # (case matters)
puts palindrome_array?(["m", "a", "d", "a", "m", " ", "i", "'", "m", "a", "d", "a", "m"]) == false # (all characters matter)
puts palindrome_array?(%w[3 5 6 6 5 3]) == true

palindrome_str_arr?('madam') == true
palindrome_str_arr?('Madam') == false          # (case matters)
palindrome_str_arr?("madam i'm adam") == false # (all characters matter)
palindrome_str_arr?('356653') == true
palindrome_str_arr?(%w[m a d a m]) == true
palindrome_str_arr?(%w[M a d a m]) == false          # (case matters)
palindrome_str_arr?(["m", "a", "d", "a", "m", " ", "i", "'", "m", "a", "d", "a", "m"]) == false # (all characters matter)
palindrome_str_arr?(%w[3 5 6 6 5 3]) == true