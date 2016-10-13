# morning cohort 15!

# design, idea, concept
# class - class names are Capitalized, and CamelCased.
# ThisIsAnExampleOfCamelCase
# the file containing our class should typically be lowercase and snake_case: ie. cookie.rb, jacob_tran.rb
class Cookie
  # when a cookie is constructed using .new, this initialize method is the first thing that is executed (actually is a private method)
  # "low fat", 10, 15, true
  # $sugar_limit = 20 # global variable, this accessible anywhere

  attr_accessor :sugar_amount
  attr_accessor :flour_amount
  # attr_accessor will create both the getter and setter methods for us
  # attr_reader will only create the getter
  # attr_writer will only create the setter

  def initialize(name, sugar_amount, flour_amount, gluten_free)
    @name = name
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount

    # if sugar > Cookie.sugar_limit
    #   @sugar = Cookie.sugar_limit
    # else
    #   @sugar = sugar
    # end

    # @flour = flour
    @gluten_free = gluten_free
  end

  # this is called a GETTER or accessor method
  # sugar_amount is an argument coming in from our initialize method (kicked off by the .new constructor)
  # @sugar is the instance variable defined in our initialize method. it is set to the value of the argument being passed in. the instance variable can be called anywhere in our class, but not outside our class.
  # if we want to get the value of @sugar outside our class, we wrap the variable in a getter method.
  def get_sugar
    @sugar
  end

  # this is called a SETTER or accessor method
  def set_sugar(new_amount)
    # new_amount = new_amount / 2
    @sugar = new_amount
  end

  def self.sugar_limit
    20
  end

  def details
    # p "inside the initialize method with sugar: #{sugar}"
    p "#{@name} cookie, with #{@sugar_amount}g of sugar, #{@flour_amount}g of flour."
    if @gluten_free
      p "#{@name} cookie is gluten_free"
    else
      p "#{@name} cookie is not gluten_free"
    end
  end

  # method in ruby
  def parent_cutting
    p cutting
  end

  def eat
    p bake
    "Munch, munch, munch."
  end

  private

  def cutting
    "cutting the cookies..."
  end

  def bake
    # the last line in a method, it's return value is automatically returned by the method
    "baking the cookie which contains #{@sugar}g of sugar..."
  end
end

# baking, building, constructing
# object
# p Cookie.info

# low_fat = Cookie.new("low fat", 5, 15, true)
# low_fat.details
# low_fat.eat
# # low_fat.sugar
# # low_fat.@sugar # the instance variables are only able to be called in our class
# rich = Cookie.new("rich", 50, 15, false)

# p Cookie.sugar_limit
heart_attack = Cookie.new("heart attack", 300, 100, true)
heart_attack.details
p heart_attack.sugar_amount
heart_attack.sugar_amount = 5
p heart_attack.sugar_amount
p heart_attack.details

# c.parent_cutting
# my_array = Array.new(5) # default value
# my_hash = Hash.new("hello") # default value
# puts c.bake # we call these class methods by using the "dot" syntax
# puts c.eat

# my_array.sort # sort is a method in the array class
# my_hash.keys # keys is a method in the hash class




#
