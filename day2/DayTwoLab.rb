# # Write a piece of code that asks a user for a number and then prints the numbers from that number to 100 if the number
# # is less than 100 (incrementing)
# #if the number is greater than a hundred it will print the numbers from that number to
# # a 100 (decrementing).
#
# puts "Please enter a number between 1 and 99:"
# number = gets.to_i
#
# if number<100
#
# for i in number..100
#   puts i
# end
#
# elsif number>100
#
# #solution 1
#   new_number = number - 100
#
#   for n in 0..new_number
#     puts number - n
#   end
#
# #solution 2
# number.downto(100) do |n|
#   puts n
# end
#
# else # the number is 100
#   puts number
# end
#
# #solution 3
#
# while (number != 100)
#   puts number
#   if num < 100
#     num += 1
#   else #number is less than 100
#     num -= 1
#   end
#
# #ternary solution 3b
#   num<100 ? num+= 1 : num-= 1

# Build a command line quiz where it prompts the user with a three questions like:
# How many sides does a hexagon have?
# 1- five
# 2- six
# 3- seven
# Enter the correct number:
# The user can then enter the correct number of the question.
# At the end it will display:
# You scored 66%, you got 2 out of 3 questions correctly.

# score=0
#
# puts "Please answer the following questions:"
# puts "A. How many sides does a hexagon have?"
# puts "1 - Five"
# puts "2 - Six"
# puts "3 - Seven"
# answer = gets.chomp.to_i
# score +=1 if answer == 1
#
# puts "How do you spell the PM's last name?"
# puts "1. True dough"
# puts "2. True though"
# puts "3. Trudeau"
# answer2 = gets.chomp.to_i
# score +=1 if answer2 == 3
#
# puts "What sound does a dog make?"
# puts "1. Woof"
# puts "2. Meow"
# puts "3. Coo"
# answer3 = gets.chomp.to_i
# score +=1 if answer3 == 1
#
# puts score


# puts John
# John = "hey there!"


# counter = 1
#
# "a".upto("z") do |letter|
#     puts letter * counter+=1
# end
#
# time = 1
# for letter in "a".."z"
#   puts letter * time+=1
# end

# time = 1
# ("a".."z").each do |letter|
#   puts letter * time+=1
# end
#
# puts "How large of a triangle?"
# max = gets.chomp.to_i
#
# for row in 1..max
# # spacing on the lft side of our row
#   for space in 1..max-row
#     print " "
#   end
#   # these are our circles
#   for circle in 1..row
#     print "O "
#   end
#   # this creates a new line
#   puts ""
# end
#
# # frank
# line = 1
# print "Enter the value of N: "
# side = gets.chomp.to_i
#
# side.times do
#   puts ("o " * line).center(side * 2)
#   line = line + 1
# end
#
# puts "Please enter a letter or number"
# num1 = gets.chomp
# puts "and another letter or number"
# num2 = gets.chomp
# puts "and another letter or number"
# num3 = gets.chomp
#
# arr = []
# arr.push(num1, num2, num3)
# print arr.repeated_permutation(3).to_a

for x in 0..2
  for y in 0..2
    for z in 0..2
      print array[x]
      print array[y]
      puts array[z]
    end
  end
end
