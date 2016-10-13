class Animal
  attr_accessor :color
  attr_accessor :name

  def initialize(name, color)
    @color = color
    @name = name 
  end

  def eat
    p "#{@name} says: I'm eating"
  end

  def walk
    p "#{@name} says: I'm walking"
  end

end

#Dog class
class Dog < Animal

  def bark
    p "#{@name} says: Woof!"
  end

  def eat
    super
    p "#{@name} says: Bones are yummy!"
  end

end

#Cat class
class Cat < Animal

  def eat
    # super
    p "#{@name} says: Fish is yummy!"
  end

end

#test
fido = Dog.new("Fido","brown")
felix = Cat.new("Felix", "black")
fido.walk
fido.bark
fido.eat
felix.walk
felix.eat
