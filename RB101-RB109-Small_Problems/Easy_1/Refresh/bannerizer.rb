def print_in_box(string)
  size = string.size + 2
  top_bottom_border(size)
  middle_rows(size)
  text_row(string)
  middle_rows(size)
  top_bottom_border(size)
end

def top_bottom_border(size)
  puts "+#{size * -}+"
end

def middle_rows(size)
  puts "|#{size * ' '}|"
end

def text_row(string)
  puts "| #{string} |"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')