# chris s
print "Enter a string: "

# creating an array of characters
input = gets.chomp.split(//)

pairs = []

# carry value and index in each do loop
input.each_with_index do |val, index|
  #  we don't want to go beyond the end of the array, we don't want to test the
  # last character and the outer bound of our array
  break if index == input.length-1

  # combine the current character in the loop with the next character
  pairs << val + input[index+1]

  # or we can not use the break and use unless
  # option 2
  # unless index == input.length-1 do
  #   pairs << val + input[index+1]
  # end

end

p pairs
