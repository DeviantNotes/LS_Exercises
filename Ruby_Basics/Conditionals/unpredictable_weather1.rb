sun = ['visible', 'hidden'].sample

=begin
case sun
when 'visible'
  puts 'The sun is so bright!'
else
  puts 'The sun is not very bright.'
end
=end


puts 'The sun is so bright!' if sun == 'visible'
