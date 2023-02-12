# My Solution:
# def leap_year?(year)
#   return true if year % 400 == 0
#   return false if year.zero? || year % 100 == 0
#   if year % 4 == 0
#     true
#   else
#     false
#   end
# end

# LS Solution 1
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# LS Solution 2
# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end

# LS Further Exploration
# def leap_year?(year)
#   if year % 4 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else 
#     year % 400 == 0
#   end
# end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true