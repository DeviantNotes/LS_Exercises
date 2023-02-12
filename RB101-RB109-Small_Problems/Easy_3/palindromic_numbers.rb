def palindromic_number?(number, number_of_leading_zeroes = 0)
  if number_of_leading_zeroes > 0
    leading_zeroes = ''
    number_of_leading_zeroes.times { leading_zeroes << '0' }
    number = "#{leading_zeroes}%o" % number
  else
    number = number.to_s
  end
  number == number.reverse
end

puts palindromic_number?(001232100, 2) == true
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
  