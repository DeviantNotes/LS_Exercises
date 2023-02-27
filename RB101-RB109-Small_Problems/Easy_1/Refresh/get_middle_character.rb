def center_of(string)
  length = string.length
  idx = length * 0.5
  arr = string.split('')
  length.odd? ? arr[idx] : arr[idx-1..idx].join
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
