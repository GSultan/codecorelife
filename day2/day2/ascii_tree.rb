# This program draws a christmas tree made from O's, as tall as the user specifies 
#
puts "How large of a tree?"
max = gets.chomp.to_i

for row in 1..max
  # spacing on the left side of our row
  for space in 1..max-row
    print " "
  end
  # these are aroud circles
  for circle in 1..row
    print "O "
  end
  # this creates a new line
  puts ""
end
#
# frank
line = 1
print "Enter the value of N: "
side = gets.chomp.to_i

side.times do
  # puts "hello world"
  puts ("o " * line).center(side * 2)
  puts line

  line += 1
end

#
# 5.times do
#   puts "Hello World"
# end







#
