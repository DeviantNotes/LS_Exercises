name = 'Roger'

string = 'RoGeR'

string2 = 'DAVE'

=begin
puts name.downcase == string.downcase

puts name.downcase == string2.downcase
=end

puts name.casecmp(string) == 0
puts name.casecmp(string2) == 0
