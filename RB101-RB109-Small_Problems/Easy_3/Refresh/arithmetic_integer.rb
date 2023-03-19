def prompt(string)
  puts "==> #{string}"
end

nums = []

prompt('Enter the first number:')
nums << gets.chomp.to_i
prompt('Enter the second number:')
nums << gets.chomp.to_i

prompt("#{nums[0]} + #{nums[1]} = #{nums[0] + nums[1]}")
prompt("#{nums[0]} - #{nums[1]} = #{nums[0] - nums[1]}")
prompt("#{nums[0]} * #{nums[1]} = #{nums[0] * nums[1]}")
prompt("#{nums[0]} / #{nums[1]} = #{nums[0] / nums[1]}")
prompt("#{nums[0]} % #{nums[1]} = #{nums[0] % nums[1]}")
prompt("#{nums[0]} ** #{nums[1]} = #{nums[0] ** nums[1]}")
