# name = Array.new
# puts "Please enter your full name:"
# name = gets.chomp.split
# name.each { |x| x.capitalize! }
# puts "My name is: #{name.join(" ")} "

# puts "this is a mutable string".capitalize
# puts 'this is an immutable string'.capitalize

#  mutability refers to being able to mutate it later

# sentence1 = "this is a mutable string"
# sentence2 = 'this is an immutable string'

# sentence1.capitalize!
# sentence2.capitalize!

# name.squeeze = remove character duplication ... so hello >> helo
# to replace characters as part of a pattern use
# "Super guber bag" .gsub "g", "b"

# name = "Jean Val Jean"
# name.gsub! "Jean", "Jacob" --- the brackets around jean and jacob are optional
# puts name
# JAcob Val JAcob

# 10.0 / 3 = 3.333333333333 to get a float in the answer

# puts "Please enter an integer: "
# a = gets.to_i
# b = a**3
# puts "Your number to the exponent of 3 is equal to #{b} "

# numbers = Array.new
# puts "Please enter two integers: "
# numbers = gets.chomp.to_i
#puts "Your numbers multiplied by each other equal to " + numbers[0] * numbers[1]

=begin
print "What grade did you earn?"
grade = gets.chomp.to_i
if grade <= 20
  puts "You are a disgrace"
elsif grade >20 && grade <= 40
  puts "You still failed"
elsif grade >40 && grade <= 60
  puts "You may have passed, or maybe not"
elsif grade >60 && grade <= 80
  puts "You're kind of ok, I guess"
elsif grade >80 && grade <= 100
  puts "You are not disowned, this time around"
else print "You did not earn a grade between 0 and 100"
end
=end

=begin
break if x > 20  is ==  to
if x  > 20
  break
end


n = 0
loop do
  puts n
  n += 1
end

until x > 50
end


for i in 1..10
  puts i
end



for i..10
i=1
puts i
