# jose

puts "How manysides does a hexagon have?"
puts "1"
puts "2"
puts "3"
print " enter your choice:"

response = gets.chomp
score = 0

while response.to_i != 1 && response.to_i != 2 && response.to_i != 3
    print " Only choice available : 1 2 or 3 please try again :"
    response = gets.chomp
end

while response.to_i != 2
    print "bad response please try again :"
    response = gets.chomp
    score = score + 1
end

puts "you are right!!!"
