require "./animal.rb"
require "./bird.rb"
require "./helper_method.rb"
require "./cat.rb"

cat = Cat.new("tom")
bird = Bird.new("jerry")

cat.catch(bird)
