# modules as categories / namespaces
module Fruit
  class Apple
  end
end

module Computer
  class Apple
  end
end

apple = Fruit::Apple.new
apple = Computer::Apple.new

# if we are doing it over multiple files
# folder called computer, and inside would be apple.rb
class Computer::Apple
end

# folder called fruit, and inside would be apple.rb
class Fruit::Apple
end







#
