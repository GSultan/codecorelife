# this is a ruby comment
# (cmd + /) will auto comment a line


# puts "Hello Cohort 15!!!" # will have start a new line after the command
# print "Hello Cohort 15!!!" # will not start a new line after the command
# p "Hello Cohort 15!!!" # ???

# variable types

# words - strings and characters
# var name:String;
# name = "Jacob Tran" # creating a variable called name, and we are assigning the value of "Jacob Tran", which is a string or a collection of characters
#
# # numbers
# # whole number - integer
# age = 37
# # decimal number or a fraction - float
# weight = 140.5
# # bignum - really big number
# wealth = 38904289048304823094823
#
# puts "My name is: " + name # combining a string and a string is valid
# puts "My age is: " + age.to_s # combining a string and a number (integer) is invalid
# puts "My weight is: " + weight.to_s
# puts "My wealth is: " + wealth.to_s
#
# puts name.class
# puts age.class
# puts weight.class
# puts wealth.class

# user input
# print "Please enter your first name: "
# # snake casing this_is_snake_casing
# first_name = gets.chomp # gets will listen for user input
# # "Jacob\n" # without chomp
# # "Jacob" # with chomp
#
# print "Please enter your last name: "
# last_name = gets.chomp # gets will listen for user input
#
# puts "Your full name is: " + first_name + " " + last_name
# puts "Your full name is: " + first_name + " " + last_name
#
# a = 10
# b = 20
#
# a + b
#
# c = "Jacob"
# d = "Tran"
# e = "365"
#
# c + d
#
# a.to_s + c #??
# b + d.to_i #??
# b + e.to_i #??
#
# first_name = "Jacob"
# last_name = "Tran"
# age = 37
#
# # string interpolation
# puts "Your full name is: #{first_name} #{last_name}"
# puts "Your age is: #{age}"

# write a piece of code that prompts users for their name and prints it capitalized

# print "What is your name? "
# name = gets.chomp.upcase
# puts "Your name is: #{name}"

# print "What is your name? "
# name = gets.chomp.capitalize
# puts "Your name is: #{name}"

# print "What is your name? "
# name = gets.chomp
# puts "Your name is: #{name.capitalize}"

# print "What is your name? "
# name = gets.chomp
# puts "Your name is: #{name.reverse}"

# print "What is your name? "
# name = gets.chomp
# puts "Your name is: #{name.swapcase}"

# print "What is your name? "
# name = gets.chomp
# puts "Your name is: #{name.split}"

# print "What is your name? "
# name = gets.chomp
# puts "Your name is: #{name.squeeze}"
# Jacob
# jACOB
#
# JaCoB
# jAcOb

# name = "Jean Val Jean"
# name.gsub!("Jean", "Jacob")
# name.gsub! "Jean", "Jacob"
# puts name
# # Jacob Val Jacob

# mutable vs immutable
# puts "this is a mutable string".capitalize
# puts 'this is an immutable string'.capitalize
#
# sentence1 = "this is a mutable string"
# sentence2 = 'this is an immutable string'
#
# sentence1.capitalize!
# sentence2.capitalize
#
# puts sentence1
# puts sentence2
#
# # MATH!!!
# 5 * 5
# 2 + 2 + 1
# 10 / 2
# 10 / 3

# % - modulo
# a = 2
# b = 3 ** a

# print "Please enter the first number: "
# first_number = gets.chomp.to_i
#
# print "Please enter the second number: "
# second_number = gets.chomp.to_i
# puts "The result is: #{first_number * second_number}"


# car - age
# print "What year is your car? "
# age = gets.chomp.to_i
# # is_a
# puts "#{age}"
# p age
#
# if (age != 0)
#   if (age <= 5)
#     puts "Your car is new!"
#   elsif (age > 5 && age <= 10)
#     puts "Your car is not new."
#   else
#     puts "Your car is old."
#   end
# else
#   puts "Your entry was invalid."
# end

# # letter grade exercise
# print "Please enter the student's grade (0-100): "
# grade = gets.chomp.to_i
#
# if grade >= 86
#   puts "You got an A!"
# elsif grade >= 73
#   puts "You got a B :)"
# elsif grade >= 65
#   puts "You got a C :("
# elsif grade >= 50
#   puts "You got a D"
# else
#   puts "You got an F"
# end

# LOOPS!!!
# puts 1
# puts 2
# puts 3
# puts 4
# puts 5
# puts 6
# puts 7
# puts 8
# puts 9
# puts 10
#
# counter = 0
#
# while counter < 5
#   puts "Hello World"
#   counter = counter + 1
# end

# counter = 50
#
# while counter > 0
#   puts counter
#   # counter = counter - 1
#   counter -= 1
#   # counter--
# end

# print "Please enter a number: "
# counter = gets.chomp.to_i
# x = 0
#
# while x < counter
#   puts "Hello World"
#   x += 1
#
#   # break if x > 20 # version 2
#
#   if x > 20
#     break
#   end
# end

=begin
all this content will be commented out.
multilined commenting is possible!
=end

# command + / on mac
# ctrl + / on everything else

# n = 0
# loop do
#   puts n
#   n += 1
# end
#
# until x > 50
# end

# for (init; condition; increment)
# for (var i=0; i<10; i++)

# for i in 0..10 # will include upper limit
# for i in 0...10 # will not include upper limit
#   puts i
# end

for i in 1..100
  if i % 5 == 0 && i % 3 == 0
    puts "FIZZBUZZ"
  elsif i % 5 == 0
    puts "BUZZ"
  elsif i % 3 == 0
    puts "FIZZ"
  else
    puts i
  end
end

#
# 1
# 2
# FIZZ
# 4
# BUZZ
# FIZZ
# 7
# 8
# FIZZ
# BUZZ
# 11
# FIZZ
# 14
# FIZZBUZZ
# .
# .
# .

100.times do |x|
  puts x
  puts "Hello Cohort 15!" if x.odd?
end

# ternary
# condition ? true : false
x = 4
puts x > 5 ? "Hello" : "Goodbye"

if x > 5
  puts "Hello"
else
  puts "Goodbye"
end










#
