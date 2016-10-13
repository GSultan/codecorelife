# kevin
score = 0

puts "How many sides does a hexagon have?"
puts "1. 4"
puts "2. 5"
puts "3. 6"
asn = gets.chomp.to_i
#assume asnwer is 2
score+=1 if asn==2

puts "QUESTION HERE"
puts "1. Answer 1"
puts "2. Answer 2"
puts "3. Answer 3"
asn = gets.chomp.to_i
#assume asnwer is 2
score+=1 if asn==2

puts "QUESTION HERE"
puts "1. Answer 1"
puts "2. Answer 2"
puts "3. Answer 3"
asn = gets.chomp.to_i
#assume asnwer is 2
score+=1 if asn==2

puts "Your score #{score*100/3}%, you got #{score} out of 3 question."
