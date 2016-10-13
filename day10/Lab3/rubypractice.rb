# Write a Ruby Rack application that takes in a score from the user and then displays a grade on the screen (A, B, C, D or F). For example the user can enter a URL like: http://localhost:8080/?score=100. The user should then see an <h1> element on the screen with the letter A in it.
puts "enter your numberic score"
score = gets.to_i
letter = ""
message = ""
if score > 90
  letter = A
  message = "you got an A"
else
  break
end
elsif score < 60
  letter = E
  message = "you got an F"
elsif score < 70
  letter = D
  message = "you got an F"
elsif score >=50 && score < 60
  puts "D"
elsif score >=60 && score < 70
  puts "C"
elsif score >=70 && score < 80
  puts "B"
elsif score >=80 && score < 90
  puts "A"
elsif score >=90 && score < 100
  puts "A+"
else
  puts "That's not a score between 1 and 100"
end
