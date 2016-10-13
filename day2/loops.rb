=begin
counter = 0
while counter < 5
  puts "Hello World"
counter += 1
end

counter = 50
while counter > 0
puts counter
counter -= 1
end
=end


puts "Please enter a number: "
number = gets.chomp.to_i

while number >= 0
  puts "Hello World"
  number -= 1
end
