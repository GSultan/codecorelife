# bc_cities_population = {
#   vancouver: 2135201,
#   victoria:  316327,
#   abbotsford: 149855,
#   kelowna: 141767,
#   nanaimo:  88799,
#   white_rock: 82368,
#   kamloops: 73472,
#   chilliwack: 66382
# }
#
#
# def large_or_small(cities_hash)
#   # iterate through a has
# cities_hash.each do |city, population|
#   # puts city.class
#   #puts city
#   # puts population
#
#     if (population > 100000) #city is large
#       puts "#{city.to_s.gsub("_"," ").capitalize} is a large city."
#     else # it is small
#       p uts "#{city.to_s.gsub("_"," ").capitalize} is a small city."
#     end
#   end
# end
#
# large_or_small(bc_cities_population)

# You are given an array with numbers between 1 and 1,000,000. One integer is in the array twice.
# How can you determine which one? Can you think of a way to do it using little extra memory.
#
# Bonus: Solve it in two ways: one using hashes and one without.
#
##############################################
# Ask the user for personal information: first name, last name, city of birth and age.
#Then store that information in a hash. After that loop through the hash and display the results, for example:
#
# Your first name is Tam.
#
# Capitalize the inputs from the user if they are capitalizable

# puts "Please enter your name"
# hash = {FirstName: gets.chomp.capitalize}
# puts "Please enter a last name"
# hash[:LastName]=gets.chomp.capitalize
# puts "Enter your birth city"
# hash[:Birthplace]=gets.chomp.capitalize
# puts "Enter your age"
# hash[:Age]=gets.chomp
#
# hash.each do |key, value|
#   puts "Your #{key} is #{value}"
# end

#################################################
# Assignment: [lab] Frequency of numbers Next Module
# Given an array of number such as:

# Write a piece of code that will generate a hash of frequencies that looks like:
# {1 => 1, 2 => 2, 3 => 4, 4 => 3}
# Stretch: Attempt to do the exercise in one line of code using methods like `each_with_object`.


  #
  ###########################################
#   # Good enough. Now, we want to know how many times each word occurs:
# array = [1,2,3,4,4,4,2,3,3,3]
# #
# freq = {}
#
# array.each do |num|
#   if freq[num]! = nil
#     freq[num]+=1
#   else
#     freq[num]=1
#   end
# end
#
# puts freq
################################################3
# counts = Hash.new 0
#   #
#   # array.each do |num|
#   #   counts[num] = counts[num] + 1
#   # end
#
# # p counts
# ################################################
# # words = %w(how much wood would a wood chuck chuck)
# array.each_with_object(counts) { |num,counts| counts[num] += 1 }
# p counts

# p array.each_with_object(Hash.new(0)) { |number, frequency| frequency[number] +=1 }

###############################################

# {"how"=>1, "much"=>1, "wood"=>2, "could"=>1, "a"=>1, "chuck"=>2}
######################################################################
# Find the most recurring letter in a given string from the user
#MOST FREQUENT RECURRING LETTER IN GIVEN STRING
# puts "enter a string"
# arr = gets.chomp.split("")
#
# string = "learning ruby"
# str = string[0]
# string.each_char do |c|
#   if c != " " &&
# end
#
# freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
# arr.max_by { |v| freq[v] }
#
# # most_frequent_item = arr.uniq.max_by{ |i| arr.count( i ) }
# # puts most_frequent_item
#
# print
# ######################################################
# def pluck(key, value)
#   return [key]
# end

# array = [{a:1}, {a:2}]
# # array.flatten!
# array.pluck(:a)

##############################3
# PLUCK METHOD
# PLUCK METHOD TAKES IN 2 ARGUMENTS: HASH_ARRAY AND THE KEY WE WANT TO PLUCK
# def pluck (array_of_hashes, pluck_key)
#   new_array = []
#   new_hash {}
#   array_of_hashes.each do |hash|
#     new_array.push (new_hash [pluck_key])
#   end
#   p new_array
# end

######################################
# def arr_create(num)
#   #rand(num) will generate a random number between 0 - num
#   (1..num).to_a << rand(num)
# end
#
# p arr_create(1000000)

# ########################################
# p Time.now
# unless Time.now < 12
#   print "keep learning ruby"
# # end
# puts "What's your ruby level?"
# ruby_level = gets.to_i
# puts "how many hours did you practice today?"
# time_practiced = gets.to_i
# if ruby_level > 9
#   puts "You are a Ruby master!"
# elsif ruby_level < 10 && time_practiced > 5
#   puts "Congrats! Your level has increased to #{ruby_level+1}"
# end
##############################
# lifespan = 100
# age = 20
#   while age <= lifespan
#     puts "You've survived another year!"
#         if age == 100
#           puts "You're dead"
#         end
#     age += 1
#   end
#############################3
score = 0
# class Fixnum
# def to_string
#   to_s
# end
# end
#######################################3
# puts "How many sides to a hexagon?"
# answer = gets.chomp.to_i
# score += 1 if answer == 5
# puts "Favorite position?"
# answer = gets.chomp.to_i
# score += 1 if answer == 69
# puts "Devil's address?"
# answer = gets.chomp.to_i
# score += 1 if answer == 666
# percentagescore = score.to_f/3*100
# puts "Congratulations! Your score is #{percentagescore.round(2)}%"
# ########################################
# time = 0
# "a".upto("z").each do |x|
#   puts x*time+=1
# # end
# time = 0
# ("a".."z").each do |letter|
#   puts letter * time+=1
# end
puts "give a number"
n = gets.chomp.to_i

for i in 1..n
  puts " "*(n-i)+("O " * i)
end
# input = "a","b","c"
# print input
