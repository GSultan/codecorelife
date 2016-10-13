# # Model the following in Ruby Classes & Objects: The cat catches the bird and eats it
# # Stretch 1: Use inheritance
# # Stretch 2: Give the cat and the bird names
# # Stretch 3: Make the chances of the cat catching the bird 50%
# # Stretch 4: Simulate having 100 cats trying to catch and eat 100 birds
# # Stretch 5: Create a module called HelperMethods in a separate file that has a method called `random_number`. Include the module in your classes and use the `random_number` method if it makes sense.
#
# class Animal
#
#   attr_accessor :speed
#   attr_accessor :name
#
#   def initialize(name, speed)
#     @name = name
#     @speed = speed
#   end
#
#
#
# end
#
#
# class Cat < Animal
#   include HelperMethod
#   # attr_accessor :speed
#   # attr_accessor :name
#   def initialize(name
#     super(name)
#   end
#
#   def catch(bird)
#     if @random_number.to_i >= 51
#       puts "#{self.name} caught #{bird.name} and ate it"
#     else
#       puts "#{bird.name} got away!"
#     end
#   end
# end
#
#
# end
#
#
#
# class Bird < Animal
#
#   attr_accessor :speed
#   attr_accessor :name
#
# end


# hash = {
#   books: ["a","b","c"],
#   songs: ["d","e","f"]
# =>
# [1][2]
# }
# hash.each_key do |x|
#   hash[x].each do |y|

# for i in 1..100
#
#   end
# end
#
#
# array = (1..100).to_a
#
# array.each do |x|
#   if x % 5 == 0 && x % 3 == 0
#     puts "FIZZBUZZ"
#   elsif x % 3 == 0
#     puts "FIZZ"
#   elsif x % 5 == 0
#     puts "BUZZ"
#   else
#     puts x
#   end
# end
# {}
#
# (1..100).each {|n| p n % 15 == 0? n :  }
counter = 0
guess = ""
number = rand(100)
while guess != number
  puts "I generated a random number between 1 and 100. Please try to guess it:"
  guess = gets.to_i
  if guess > number
      puts "You guessed too high"
      puts "You've guessed #{counter = counter + 1} times"
  elsif guess < number
    puts "You guessed too low"
    puts "You've guessed #{counter = counter + 1} times"
  else
    puts "You got it!"
  end
end
