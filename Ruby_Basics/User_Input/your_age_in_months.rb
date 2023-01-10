#$ ruby age.rb
#>> What is your age in years?
#35
#You are 420 months old.

def years_to_months(years)
  puts (years * 12)
end

p ">> What is your age in years?"
years = gets.chomp.to_i
years_to_months(years)
