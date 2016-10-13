# demo

print "Please enter a number: "
number = gets.to_i

if number < 100

  for n in number..100
    puts n
  end

elsif number > 100

  # solution 1
  new_number = number - 100

  for n in 0..new_number
    puts number - n
  end

  # solution 2
  number.downto(100) do |n|
    puts n
  end

else #  the number is 100
  puts number
end

# solution 3
while (number != 100)
  puts number
  if num < 100 # number is greater than 100
    num += 1
  else # number is less than 100
    num -= 1
  end

  # ternary (solution 3b)
  num < 100 ? num+=1 : num-=1
end

# for i in 105..100 # ???
#
# end
