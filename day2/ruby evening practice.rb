# a = "hello"
# b = a
# a.capitalize!
# puts b == "Hello"

# it displays true because it checks whether b is still  equal to a, which has been capitalized , but why ?
#-------------------------------------------
# Ask user for a number then print out the number multiplied by 5 and then the same number added to itself.
#
# puts "give a number"
# num = gets.to_i
# print num * 5 + num
# #
#
# ------------------------------------------
# #Take a string and find a way to display each character on a new line with its case swapped so if I give: Hello I will get:
# h
# E
# L
# L
# O
# string = "HolLyLorDy"
# puts string.swapcase.split("")
#---------------------------------------------
# include Math
# print Math::PI

# print Math::PI
#
# radians = degrees * Math::PI / 180

# Write code that takes a number and then prints the power of three of that number
# if it's divisible by three and it prints the power of two if it's divisible by 2 and prints the number itself otherwise.
#
# puts "Please enter a number:"
# num = gets.chomp.to_i
# if num % 3 == 0
#   puts num**3
# elsif num % 2 == 0
#   puts num**2
# else
#   puts num
# end

# Write a code that takes user's input and then prints out "Yes it has C" if entered input
# contains the letter "C" (upper or lower case). And it prints "There is no C" if it doesn't.

# puts "write some nonesense"
# txt = gets.chomp
#
# puts (txt.include? "C" )  ? "contains C" : "there is no C"
##############################################################################

#Using case / when statements ask user to enter the coffee shop they want to order from and then print:
#"Grande Latte" if they enter Starbucks and "Double Double" if they enter "Tim Hortons" and "Medium Coffee"
#if they enter Blenz and "I don't know this shop" if they enter something else.
#
# puts "What coffee shop do you want to order from?"
# ans = gets.chomp
# case ans
# when "Grande Latte"
#   puts "Starbucks"
# when "Dbl dbl"
#   puts "Timmies"
# when "medium coffe"
#   puts "Blenz"
# else
#   puts "I don't know this shop"
# end

###################################################
#
# n = 5
# until n == 15
#   print n
#   n += 1
# # end
#############################################

# Print 10 to 20 using a for loop in two ways:
# 1- using range with three dots
# 2- using range with two dots

# for n in 10...21
#   print n
# end

# Write the numbers from 50 to 15 using downto
# Write the letters from "B" to "O" using upto
#
# 50.downto(15) do |n|
#   puts n
# # end
#
# "B".upto("O") do |x|
#   puts x
# end

#Write a method that checks whether a passed String is a palindrome or not. A palindrome is a string that reads
#that same both ways for instance: sugnangus

#puts "enter a word"
#word = gets.chomp
#reverse = word.reverse

# print word == reverse ? "yes palindrome" : "no"

# print "yes palindrome" if word == word.reverse

# if word == reverse
#   print "This is a palindrome"
# else
#   print "it's not"
# end

#
# array = [ 1 ,2  ]
# array[-1]
#
# def palindrome(word)
#   return 'yes' if word == word.reverse
#   'no'
# end
#
# puts "enter a word"
# word_to_check = gets.chomp
# puts palindrome(word_to_check) # yes / no
#
# puts "enter a word:"
# text = gets.chomp.split("")
#
# if text[-1] == text[0]
#   puts "this is a palindrome"
# else
#   puts "this is not a palindrome"
# end
#
# text.delete_at(-1)
# puts text

# Ask the user for a number x and then print the first x prime numbers. Prime numbers are divisible only by 1 and themselves.

puts "give me a number bro"
num = gets.to_i

require 'prime'
print Prime.take(num)
