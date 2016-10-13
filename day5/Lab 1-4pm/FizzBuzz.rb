# Build a class called FizzBuzz that takes two numbers as parameters and then have a method called run that returns a fizzbuzz array
# (numbers from 1 to 100, numbers divisible by the first number replaced by 'fizz' and numbers divisible by the second number replaced by
# 'buzz' and numbers divisible by both replaced by 'fizzbuzz'). For instance this code should work with your class:
# fb = FizzBuzz.new(3,5)
# fb.run # returns an array like: [1, 2, 'fizz', 4, 'buzz, ...
# Now modify your solution to make it flexible and be able to change the numbers after you create the object. For instance:
# fb = FizzBuzz.new(3,5)
# fb.run # returns an array: [1, 2, 'fizz', 4, 'buzz, ...
# fb.first_number = 2
# fb.second_number = 3
# fb.run # returns an array: [1, 'fizz', 'buzz', 'fizz', 5, 'fizzbuzz'...

class FizzBuzz

  attr_accessor :first_number ### allows you to modify the variables when you're referring to the class later
  attr_accessor :second_number ### allows you to modify the variables when you're referring to the class later
  ## this allows you to change your instance variables outside of your class
  ## also allows you to change on the fly , outside of your
  def initialize(first_number,second_number) ##give arguments here , so we can contstruct a fizzbuzz object later
    @first_number = first_number
    @second_number = second_number
    # @array = []
  end

def run
  array = (1..100).to_a
  array.each do |num|
    if num % @first_number == 0 && num % @second_number
      puts "fizzbuzz"
    elsif
      num % @first_number == 0
      puts "fizz"
    elsif
      num % @second_number == 0
      puts "buzz"
    else
      puts num
    end
  end
end

end

fb = FizzBuzz.new(5,10)
fb = FizzBuzz.new(5,10)

fb.first_number = 3
fb.second_number = 5

fb.run

####################################

for i in 1..100
  if i % @fizz == 0 && i % @buzz == 0
    @array << 'fizzbuzz'
  elsif i % @fizz == 0
    @array << 'fizz'
  elsif i % @buzz == 0
    @array << 'buzz'
  else
    @array << i
  end
end
######################
