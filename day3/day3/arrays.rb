# morning cohort 15!!!
# snake case for variable declarations
# shopping_list = Array.new
# shopping_list = []
#               #     0           1        2       3       4
# shopping_list = ["bananas", "coffee", "eggs", "milk", "cheese"]

# puts shopping_list[3] # milk
#
# # push adds an item to the end of our array
# shopping_list.push("diapers") # drop brackets
# shopping_list.push "diapers"
#
# shopping_list << "diapers" # shovel operator, it is equivalent to push
#
# shopping_list.push("diapers").push("baby food").push("formula")
# shopping_list << "diapers" << "baby food" << "formula"
# shopping_list.push("diapers","baby food","formula")
# shopping_list.push "diapers", "baby food", "formula"

# to comment and uncomment use cmd + / or ctrl + /
# p shopping_list
# shoppingList # camel case - not the convention for ruby

# guys_array = ["nari", "howard", "johnny", 25, 40, 18]
#
# guys_array.push(true)
# guys_array.push false
# guys_array << nil
#
# p guys_array[8] # nil
# p guys_array[20] # ???
# p guys_array

# dynamic sizing of arrays in ruby
# p guys_array[20] = "Jacob"
# guys_array[2] = "Rueben"
# # puts guys_array
# # p guys_array
#
# puts guys_array[100] # if element 100 doesnt exist, puts will display nothing with a new line character
# print guys_array[100] # if element 100 doesnt exist, puts will display nothing without a new line character
# p guys_array[100] # if element 100 doesnt exist, puts will display "nil"

# shopping list is one column
#  __|
#  __|
#  __|
#  __|
#  __|
#  __|

# one piece of information to determine where the data was in our shopping list

# tic tac toe

# __|__|__
# __|__|__
#   |  |

# 3 x 3 grid
# two pieces of information to determine where you would like to move

# option 1
# row1 = [nil, nil, nil]
# row2 = [nil, nil, nil]
# row3 = [nil, nil, nil]
#
# tictactoe = [ row1,
#               row2,
#               row3  ]
#
# # option 2
# tictactoe = [ [nil, nil, nil],
#               [nil, nil, nil],
#               [nil, nil, nil] ]
#
# # if i want to put an "X" on the top left of my game board, I need to get row 1 first
# tictactoe[0] # this will return to us row 1
# tictactoe[0][0] # this will return to us row 1, column 1
# # tictactoe[row][column] # this will return to us row 1, column 1
#
# tictactoe[0][0] = "X"
# p tictactoe[0]
# p tictactoe[1]
# p tictactoe[2]
# puts
# tictactoe[1][1] = "O"
# p tictactoe[0]
# p tictactoe[1]
# p tictactoe[2]
# puts
# tictactoe[2][2] = "X"
# p tictactoe[0]
# p tictactoe[1]
# p tictactoe[2]
# puts
# tictactoe[0][2] = "O"
# p tictactoe[0]
# p tictactoe[1]
# p tictactoe[2]
# puts
# tictactoe[2][0] = "X"
# p tictactoe[0]
# p tictactoe[1]
# p tictactoe[2]
# puts
#
# # determine the size of an array
# shopping_list.length
# shopping_list.count
# shopping_list.size
#
# tictactoe.length # 3
# tictactoe[0].length # 3
#
# # turns a multi-dimensional into one dimensional array
# flattened_tictactoe = tictactoe.flatten
#
# tictactoe
# flattened_tictactoe

# sentence = "Hello Codecore Students"
# p sentence.split
# p sentence.split()
# p sentence.split(" ")
#
# sentence = "Hello,Codecore,Students"
# p sentence.split(",")
# p sentence.split ","
# sentence = "Hello-Codecore-Students"
# p sentence.split("-")
# p sentence.split "-"

# sentence = "Hello-Codecore-Students"
# p sentence.split(//)
#
# sentence = "Hello-Codecore-Students"
# p sentence.split("")


# create an array containing the values 1 to 100
# [1,2,3,4,5,6.......100] ??
#
# numbers = Array.new # guy
# for i in 1..100
#   if ( (i % 3 == 0) && (i % 5 == 0) )
#     numbers.push "FIZZBUZZ"
#   elsif (i % 5 == 0)
#      numbers.push "BUZZ"
#   elsif (i % 3 == 0)
#     numbers.push "FIZZ"
#   else
#     numbers.push i
#   end
# end
#
# # array = (1..100).to_a # johnny
# # puts (1..100) # is a range... this can be converted to an array using to_a
#
# p numbers
#
# # [1,2,"FIZZ",4,"BUZZ",6,7,8,"FIZZ"....]
#
# # iterating through our shopping list
# shopping_list = ["bananas", "coffee", "eggs", "milk", "cheese"]
#
# shopping_list.each do |item|
#   puts item.capitalize
# end
#
#
# shoes = ["jimmy choo", "sketchers", "clark", "crocs"]
#
# shoes.each do |shoe|
#   puts shoe.upcase
# end
#
# numbers = [1,2,3,4,5] # guy
# for i in numbers
#   puts i * i
# end
#
# numbers = Array.new # jose
# for i in 1..5
#   numbers.push(i*i)
# end
#
# p numbers # ??
#
# array = [1,2,3,4,5]
# array.each do |number|
#   puts number * number
# end
#
# p array # would display the original array
#
# names = ["jacob", "tam", "steve", "wesam", "lucas"]
# new_array = []
#
# names.each do |name| # sho
#   # puts name.capitalize
#   # x = name.capitalize! # this will modify your original array
#   # but if you don't want it to, you can leave out the "!"
#   # puts x
#   # new_array << x
#
#   new_array << name.capitalize # johnny
# end
#
# p "original array"
# p names
# p "new array"
# p new_array

# tictactoe = [[1,2,3], [4,5,6], [7,8,9]]
#
# tictactoe = [ [ col1, col2, col3 ], row2, row3 ]
# tictactoe.length # 3
# tictactoe[0].length # 3
#
# tictactoe.each do |row|
#   # p row # returns [1,2,3]
#   row.each do |column|
#     p column
#   end
# end
#
# tictactoe.flatten.each do |element| # johnny
#   p element
# end
#
# for row in tictactoe # ricky
#   for column in row
#     p column
#   end
# end
#
# for plane in rubix_cube # ricky
#   for row in plane
#     for column in row
#       p column
#     end
#   end
# end
#
#   end
# # bingo
#
# bingo = [ [0,0,0,0,0,0,0,0],
#           [0,0,0,0,0,0,0,0],
#           [0,0,0,0,0,0,0,0]
#         ]
#
# bingo.length # 3, number of rows, y axis
# bingo[0] # 8, numbers of columns, x axis

numbers = [1,2,3,4,5]
#
# numbers.each do |number|
#   puts number # multiple lines
# end
#
# numbers.each {|number| puts number} # one lne

# numbers.map do |number|
#   puts number
# end
#


# new_numbers = numbers.each {|number| number * number}
# # this each do loop will return the original array
# p new_numbers
#
#
# new_numbers2 = numbers.map {|number| number * number}
# # map will return to you a new data set.
# p new_numbers2
#
# print "Please enter a sentence: "
# sentence = gets.chomp
#
# for i in 0..sentence.length-1 # jose
#   print sentence[i].capitalize
# end
#
# word_array = sentence.split(" ") # chris d
# capitalize = word_array.map {|word| word.capitalize }
# capitalize.each do |line|
#   puts line
# end
#
# print "Please enter a sentence: " # chris s
# gets.chomp.split.map {|word| puts word.capitalize }
#
# print "Please enter a sentence: "
# new_array = gets.chomp.split.map {|word| word.capitalize }
# p new_array


words = %w(i love green eggs and ham)
p words

# words = Array.new
# words = []

# puts words.class
#
# puts words.first
# puts words.last
#
# words << nil
# words << " "
# words << 0
# words << false
# words << -1

# p words

# words.insert(2, "jello")
# words.insert(100, "jello")
# words.compact! # removes the nil elements from the array

# p words[-1] # this will return to us the last element of our array
# p words[-2] # this will return to us the last element of our array
#
# p words.include? "ham" # boolean, true and false
#
# p words.object_id
# words = Array.new(3, "John Doe")
# p words.object_id
#
# p words
# # equivalent to words.last
# # p words
#
# a = 10
#
# p 10.object_id # 21
# p a.object_id # 21?
#
# p false.object_id
# p 0.object_id
# p true.object_id #? what takes up memory location 2???
# p 1.object_id
#
# name = "Jenn" # strings are arrays of characters
# # name = ["J", "e", "n", "n"]
# p name[0] # ?
# p name.last # ? throws an error, so strings are kinda like arrays, but are missing alot of array methods

# zero dimensions, dot, pixel
# one dimension? boy band, line
# 2 dimensions - surface, playing card (width, height) (x,y)
# 3 dimensions - cube, sphere. (width, height, depth)
# 4 dimension - time... how does our earth move over the period of 365 days
# 5 dimension - ?
# 10 .. 11?

# define the array for a rubix cube
#     _
#    |_|
#    |_|
# |_||_||_|
#    |_|
#
#
# |_||_||_|
# |_||_||_|
# |_||_||_|

# Assignment: [demo] Array of sizes
#
# Given an array of words, generate an array of numbers that contains the lengths of each word in the first array in the same order.

words = %w(This is the way step inside)
words = ["This", "is", "the", "way", "step", "inside"]

# print "Please enter a sentence: "
# sentence = gets.chomp
# words = sentence.split

words_length = []

words.each do |word|
  words_length << word.length
  # words_length.push
end

p words_length


# result - word lengths array
# [4, 2, 3, 3, 4, 6]

# Title-izing

Game of Thrones
The Lord of the Rings
Harry Potter
The DaVinci Code

# of, and, or, the, is, a, to, an, for ...
