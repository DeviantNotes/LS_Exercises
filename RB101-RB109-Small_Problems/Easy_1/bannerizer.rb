require 'pry'
# My original solution:
# def print_in_box(string)
#   width = string.length
#   width += 2
#   top_bottom_border(width)
#   sides(width)
#   puts "| #{string} |"
#   sides(width)
#   top_bottom_border(width)
# end

# def top_bottom_border(width)
#   print '+'
#   width.times {|i| print '-'}
#   puts '+'
# end

# def sides(width)
#   print '|'
#   width.times {|i| print ' '}
#   puts '|'
# end

# LS Solution:
# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# Further Exploration:
def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size < 75 ? message.size + 2 : 78)}+"
  empty_line = "|#{' ' * (message.size < 75 ? message.size + 2 : 78)}|"
  puts horizontal_rule
  puts empty_line
  message_format(message)
  puts empty_line
  puts horizontal_rule
end

def message_format(message)
  b1 = 0
  b2 = 75
  loop do
    puts "| #{message[b1..b2] + (' ' * (message[0..75].length -
          message[b1..b2].length))} |"
    break if b2 > message.length
    b1 += 76
    b2 += 76
  end
end

print_in_box("This is a fairly straightforward solution. To simplify matters, we start out by setting horizontal_rule and empty_line to appropriate values for the top and bottom 2 lines of the box. The expression '-' * (message.size + 2) simply creates a string of message.size + 2 hyphens; combined with the + at the beginning and end of the string, this is just wide enough to draw the horizontal lines while leaving room for one blank on either side of the message.")
print_in_box('hey man')
print_in_box('To boldly go where no one has gone before.')
