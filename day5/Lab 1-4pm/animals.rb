class Animal

  attr_accessor :name
  attr_accessor :color

  def initialize(name, color)
    @name = name
    @color = color
  end

def eat
  puts "My name is #{@name}, and my color is #{@color}, and I'm eating"
end

def walk
  puts "My name is #{@name}, and my color is #{@color}, and I'm walking"
end

end

class Dog < Animal
   def bark
     puts "woof"
   end

   def eat
    super
    puts "Bones are yummmy!"
   end
end

class Cat < Animal
  def eat
    puts "Fish is yummy!"
  end
end

animal = Animal.new("Stuart","white")
dog = Dog.new("setter","white")
cat = Cat.new("whiskers","yellow")

animal.walk
dog.eat
cat.eat
