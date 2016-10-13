a = 'Hello"s'
puts a

# # # guy
# puts "Please enter a valid number: "
# entry = gets.chomp
#
# while !(entry =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/)
#   puts "Not a valid number, please enter another: "
#   entry = gets.chomp
# end
# #
# # puts "Congrats, you've entered a valid number"
# #
# # # type checking
# "Hello Cohort 15".is_a? String # true
# "Hello Cohort 15".is_a? Integer # false
# 100.is_a? Integer # true
# 100.is_a? String # false
#
# result = "Hello Cohort 15".is_a? String
# puts ("Hello Cohort 15".is_a? String) ? "Yes it is a string" : "No it is not a string"
#
# puts nil.class
# # undefined
#
#
# puts "Please enter a letter or a number"
# num1 = gets.chomp
# puts "and another"
# num2 = gets.chomp
# puts "and another"
# num3 = gets.chomp
#
# arr = []
# arr.push(num1,num2,num3)
#
# result = arr.repeated_permutation(3).to_a
# [["a", "a", "a"],
#  ["a", "a", "b"],
#  ["a", "a", "c"],
#  ["a", "b", "a"],
#  ["a", "b", "b"],
#  ["a", "b", "c"],
#  ["a", "c", "a"],
#  ["a", "c", "b"],
#  ["a", "c", "c"],
#  ["b", "a", "a"], ["b", "a", "b"], ["b", "a", "c"], ["b", "b", "a"], ["b", "b", "b"], ["b", "b", "c"], ["b", "c", "a"], ["b", "c", "b"], ["b", "c", "c"], ["c", "a", "a"], ["c", "a", "b"], ["c", "a", "c"], ["c", "b", "a"], ["c", "b", "b"], ["c", "b", "c"], ["c", "c", "a"], ["c", "c", "b"], ["c", "c", "c"]]
# p result
# result.each do |set|
#   puts set.join
# end



#
# # chris
# puts "Please enter a letter or a number"
# num1 = gets.chomp
# puts "and another"
# num2 = gets.chomp
# puts "and another"
# num3 = gets.chomp
#
# array = [num1, num2, num3]
#
# # for x in 0..2
# #   puts x # 0, 1, 2
# # end
#
# for x in 0..2
#   for y in 0..2
#     for z in 0..2
#       #x == 0, y == 0, z==0
#       #x == 0, y == 0, z==1
#       #x == 0, y == 0, z==2
#
#       #x == 0, y == 1, z==0
#       #x == 0, y == 1, z==1
#       #x == 0, y == 1, z==2
#
#       #x == 0, y == 2, z==0
#       #x == 0, y == 2, z==1
#       #x == 0, y == 2, z==2
#
#       #x == 1, y == 0, z==0
#       #x == 1, y == 0, z==1
#       #x == 1, y == 0, z==2...
#
#       print array[x]
#       print array[y]
#       puts array[z]
#     end
#   end
# end
#
# # abc
# "a".upto("c") do |letter|
#   # letter == a, 1
#   # letter == b, 5
#   # letter == c, 9
#   "a".upto("c") do |letter2|
#     # letter == a, letter2 == a, 2
#     # letter == a, letter2 == b, 3
#     # letter == a, letter2 == c, 4
#
#     # letter == b, letter2 == a, 6
#     # letter == b, letter2 == b, 7
#     # letter == b, letter2 == c, 8
#
#     # letter == c, letter2 == a, 10
#     # letter == c, letter2 == b, 11
#     # letter == c, letter2 == c, 12
#     puts letter+letter2
#   end
# end
#
# #
# # "a".upto("c") do |x|
# #   "a".upto("c") do |y|
# #     "a".upto("c") do |z|
# #       puts x+y+z
# #     end
# #   end
# # end
#
#
#
#
#
#

#
