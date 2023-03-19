require 'pry'

def top_bottom_border(size)
  puts "+" + "-" * size + "+"
end

def middle_rows(size)
  puts "|" + " " * size + "|"
end

def text_row(string)
  length = string.length
  idx_start = 0
  idx_end = 75
  if length > 76
    loop do
      puts "| #{string[idx_start..idx_end]} |"
      idx_start += 76
      idx_end += 76
      break if string.length >= idx_end
    end
  else
    puts "| #{string} |"
  end
end

def print_in_box(string)
  size = string.size + 2
  top_bottom_border(size)
  middle_rows(size)
  text_row(string)
  middle_rows(size)
  top_bottom_border(size)
end

def print_in_box_truncated(string)
  string = string[0..75]
  size = string.size + 2
  top_bottom_border(size)
  middle_rows(size)
  text_row(string)
  middle_rows(size)
  top_bottom_border(size)
end

def print_in_box_wrapped(string)
  size = 0
  idx1 = 0
  idx2 = 75
  case size
  when size >= 76
    size = 76
  else
    size = string.size + 2
  end
  top_bottom_border(size)
  middle_rows(size)
  loop do
    text_row(string[idx1..idx2])
    idx1 += 76
    idx2 += 76
    break if idx1 > string.length
  end
  middle_rows(size)
  top_bottom_border(size)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

print_in_box_truncated('To boldly go where no one has gone before.')
print_in_box_truncated('')
print_in_box_truncated('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')

print_in_box_wrapped('To boldly go where no one has gone before.')
print_in_box_wrapped('')
print_in_box_wrapped('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')
