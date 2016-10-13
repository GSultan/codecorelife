# this is a ruby comment
# command+forward slash is default way to find out what the note symbol is

puts "hello" # will start a new line after the command
print "hello" # will not start a new line
p "hello" # ?? will print out the variable / data types , meaning words / strings / characters / and numbers

#bignum in ruby
#decimal number or a fraction - float , for the floating points after a decimal
# whole numbers = integers

name = "mylord"
age = 28
weight = 150.5
wealth = 1231213232323232323290

puts "my age is " + age.to_s # combining a stright and a string is valid, but combining a string and a number )integer) is innvalid
puts "my weight is " + weight.to_s #convert it to a string
puts "my wealth is " + wealth.to_s

# codemirror.io/jacobtran/ruby_basics

puts name.class
puts age.class
puts weight.class
puts wealth.class

print "Please enter your first name: "
# sname casing this_is_snake_casing
first_name = gets.chomp #gets will listen for user input

print "Please enter your last name: "

last_name = gets.chomp

puts "Your full name is: " + first_name + " " + last_name

# "Guy\n" # without chomp
# "Guy" # with chomp

# string interpolation

# a.to_s + c #??
# b + d.to_i #??
# b + e.to_i #??

first_name = "Guy"
last_name = "Viner"
age = 28

puts "Your full name is: #{first_name} #{last_name}"
puts "Your age is: #{age}"
