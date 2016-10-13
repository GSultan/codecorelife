# shopping_list = Array.new
#
# shopping_list << "apples" << "oranges"
#
# shopping_list.push("diapers").push("babyfood")
#
# shopping_list
#
# a = ["string", "string2", "string3", 1,2,3]
#
# a.push(false, true, nil)
#
# p a
# p a[20] = "Jacob"
# a[2] = ["Reuben",3,5,6]
# puts a
# print a
# p a
#
# a.length
# puts a.length
# puts a.count
# puts a.size
#
# puts = a.flatten!
#

# a = "Hello codecore students"
# p a.split
#
# numbers = Array.new
#
# for i in 1..100
#   numbers.push(i)
# end
#
# print numbers
#
# array = (1..100).to_a # Johnny

# print (1..100).class #  check the class of something
#
# numbers = Array.new
# for i in 1..100
# if i % 5 == 0 && i % 3 == 0
#   numbers.push "FIZZBUZZ"
# elsif  i % 5 == 0
#   numbers.push "BUZZ"
# elsif i % 3 == 0
#   numbers.push "FIZZ"
# else
#   numbers.push i
# end
# end
# p numbers
##########################
#numbers = [1,2,3,4,5]

# numbers.each do |n|
#   print n*n
# end
##############################
# for i in numbers
#   print i * i
# end
##########################
# numbers = Array.new
# for i in 1..5
#   numbers.push(i*i)
# end
# ##########################
# puts "give 5 names"
# names = gets.chomp.split
# names.each do |name|
#   print name.capitalize! + " "
# end

# nested for
# nested each/do
#
# tictactoe = [[1,2,3],[4,5,6],[7,8,9]]
# tictactoe.each do |row|
#   # p row
#   row.each do |column|
#     p column
#   end
# end
# ######################
# tictactoe.flatten.each do |element|
#   p element
# end
# ######################
# for row in tictactoe
#   for column in row
#     p column
#   end
# end
######################

#
# bingo = [ [0,0,0,0,0,0,0,0],
#           [0,0,0,0,0,0,0,0]
#           [0,0,0,0,0,0,0,0]
#         ]
#
# bingo.length # 3  number of rows , y axis
# bingo[0] #8 number of columns, x axis
# #################################3
# numbers = [1,2,3,4,5]
# numbers.map do |number|
#   puts number
# end
# ############???????????????????????/
# new_numbers = numbers.each {|number| number * number}
# new_numbers2 = numbers.map {|number| number * number}
#
# p new_numbers
# p new_numbers2
#########?????????????????????
## map and each are interchangeable in that they will interate through the data structure and do something to it
#
# print "give a sentence"
# text = gets.chomp.split
#
# capitalized_text = text.map do |word|
#   word.capitalize!
# end
#
# print capitalized_text
# ###########
# print "Please enter a sentence: " # chris
# gets.chomp.split.map {|word|  puts word.capitalize}
############3
# print "please sentence"
# new_array = gets.chomp.split.map {|word| word.capitalize }
# p new_array
##############################3
##############?????????????????????????????????????
# words = %w(i would love green eggs and ham)
# p words
#
# puts words.class
#
# puts words.first
# puts words.last
#
# words.insert(2, "jello") #push something in without removing preexisting data
# p words
# #############################33
# words.insert(100, "jello")
# # p words
# words << -1
# words << nil
# words << " "
# words << false
#
# words.compact! # remove all the nils
#
# p words[-1] # this will return to us the last element of our array
# p words[-2] # second last
# # p words
#
# p words.include? "ham" # boolean, true and false
#
# words = Array.new(3, "John Doe")
# print words
# #########################################
# # words.compact! #remove nils
# # p words
#
# p name.object_id ## find out memory location of strings variables arrays

# ################
# name =  "Jenn" # strings are arrays of characters
# p name[0] # ?  => J
#  p name.last # ? throws an error , so strings are kinda like arrays but are missing alot of the array methods
# p name = ["J", "e", "n", "n"]

# zero dimensions , dot , pixel
# one dimension ? boy band  , line
# 2 dimensions - surface , playing card (width,height) (x.y)
# 3 dimensions - box , cube , sphere , (width, height, depth)
# 4 dimensions - time  ... how does our earth move over the period of 365 days
# 5 dimensions - ?
# def Create3DimensionArray(x, y, z, default)
#     n = 0                       # verification code only
#     ar = Array.new(x)
#     for i in 0...x
#         ar[i] = Array.new(y)
#         for j in 0...y
#             ar[i][j] = Array.new(z, default)
#             for k in 0...z      # verification code only
#                 ar[i][j][k] = n # verification code only
#                 n += 1          # verification code only
#             end                 # verification code only
#         end
#     end
#     return ar
# end
#
# # Create sample and verify
# ar = Create3DimensionArray(3, 7, 10, 0)
#
# for x in ar
#     puts "||"
#     for y in x
#         puts "|"
#         for z in y
#             printf "%d ", z
#         end
#     end
# end

# Write some code that keeps asking the user for book names until the user enters "exit". After typing "exit"
#the program should display all the entered book names sorted and have the book names capitalized.
#
# books = Array.new
#
# loop do
#   puts "Please enter a book name"
#   response = gets.chomp
#   if response == "exit"
#     break
#   else
#     books.push(response.capitalize)
#   end
# end
#
# p books.sort

# books.pop remove the last elemtn of array
# books.sort!
# p books
#
# arrays = []
# loop do
#   puts "Please enter some numbers or write exit"
#   response = gets.chomp
#   if response == "exit"
#     break
#   else
#     arrays.push(response)
#   end
# end
#
# print arrays

#Write a piece of code that will take that array and give back an array of arrays with each element multiplied by itself
#so you will get back:
#
# array = [[2,3,4], [5,6,7], [6,7,8]]
#
# array.each do |inside|
#   p new_array = inside.map { |y| y*y }
#   end
#


#################################
# array.each do |n|
#   new_array do |n| i * i
#   end
# end
#
# p array
# ######################################
#
# greeting = "hello"
#
# for i in greeting.split("")
#   while
#
# ---------------
# array = Array.new
# array << greeting.split("")
# p array
#
# print array[0]
################
#
# p gets.chomp.split("").reverse.join
#
# greeting = "hello"
# reverse_array = []
# index = greeting.size - 1
# while index>=0
#   reverse_array.push greeting[index]
#
# end
################

# Given a string such as "abcd". Generate an array that gives every 2-letter combination that are adjacent so
# your code will generate:
# ?
# 1
# ["ab", "bc", "cd"]
#
# string = "abcd"
# newArr = []
#
# for i in 0..string.length-2
#   newArr << string[i] + string[i+1]
# end
# p newArr
#
# 1
# my_string ="Hello World";
# # Find a way to get a substring that contains the last 4 characters.
#
# p my_string.split("").slice(my_string.length-4,4)

# Given a string such as "abcd". Generate an array that gives every 2-letter combination that are
# adjacent so your code will generate:

# word = "abcd"
#
# # array = ["ab", "bc", "cd"]
#
# newarray = []
#
# for i in 0..word.length-2
#   newarray << word[i] + word[i+1]
# end
#
# p newarray
#
# my_array = [1,2,3,4]
# reverse_array = []
# for i in 0..my_array.length-1
#   reverse_array.insert 0, my_array[i]
# end
#
# p reverse_array



# p array.join.reverse.split("")

# p gets.chomp.split("").reverse.join
#
# Given a number N from the user. Generate an array that contains the first N numbers of the fibonacci sequence.
# note: In mathematics, the Fibonacci numbers or Fibonacci series or Fibonacci sequence are the numbers in the following
#integer sequence:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
#The sequence starts with 1 and then every number is the sum of the two previous numbers.

# puts "enter a number"
# N = gets
# farray = []
#
#   if i == 0
#     farray << 1
#   else
#     farray << farray[i - 2] + farray[i - 1]
#   end
#   puts farray
# end


# array = []
# for i in 1..N
#   farray << farray[i-2] + farray[i-1]
# end
# when i is 1
#   1
# when i is 2
#  1
#  when i is 3
#    1

#
# if N is 5
# first run though is
#

# define fibonacci sequence formula result =
#
# ?
# 1
#Write a code that takes an array and then returns another array that contains all the numbers that are greater than 10.
#The code should not fail if the array contains strings / non-number elements.
#for example, this array:
# my_array = [1,4,5,23,14,"Hello there", false, nil]
# Should return:
# [23,14]

# puts "enter some stuff"
# array = gets.split
# puts array

#
# def fibonacci(n)
#     a = 0
#     b = 1
#
#     # Compute Fibonacci number in the desired position.
#     n.times do
# 	temp = a
# 	a = b
# 	# Add up previous two numbers in sequence.
# 	b = temp + b
#     end
#
#     return a
# end
#
# # Write first 15 Fibonacci numbers in sequence.
# 15.times do |n|
#     result = fibonacci(n)
#     puts result
# end

# my_array = [1,4,5,23,14,"Hello there", false, nil]
# new_array = []
# # Should return:
# # [23,14]
#
# my_array.each do |x|
# if x.is_a? Integer
#   new_array << x if x > 10
# end
# end
#
# p new_array

# questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]
# array = []
#
# questions.each do |x|
#   if x.length < 15
#     array << x
#   end
# end
#
# puts array
# require "benchmark"
#
# array = [34, 24, 45, 6, 6, 77, 19]
#
# Benchmark.bm do |x|
#   x.report do
#     30_000_000.times do
#       number = array.delete_at(3)
#       array.insert(2, number)
#     end
#   end
# end
#
# Benchmark.bm do |x|
#   x.report do
#     30_000_000.times do
#       temp     = array[2]
#       array[2] = array[3]
#       array[3] = temp
#     end
#   end
# end
#
# p array = (1..15).to_a.shuffle
# sorted = []
#
# array.length.times do
#     sorted << array.min
#     array.delete(array.min)
# end
#
# p sorted
# input = []
# inputs = []
#
# loop do
#   puts "enter stuff or exit"
#   input = gets.chomp
# if input == "exit"
#   break
# else
# inputs << input
# end
# end
# puts "You've entered #{inputs.count} things and they are #{inputs.join(", ")}"
# Write a code that generates a Pascal Triangle with N number of row taken from the user.
# More description about it here: https://en.wikipedia.org/wiki/Pascal%27s_triangle
# This assignment has not been marked
