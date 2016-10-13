# design, idea, concept is the class
#
# class names are capitalized and camelcased
#   ThisIsExampleOfCamelCase
#   the file containing our class should be typically lowercase and snake_case : ie. cookie.rb, guy_viner.rb
#
############################

class Cookie
# when a cookie is constructed using "".new",
#this initialize method is the first thing that is executed (initialize is actually a private method but can appear anywhere)

###    GLOBAL VARIABLE : ALTERNATIVE WAY TO SET THE SUGAR LIMIT $sugar_limit = 20 # global variable, this accessible anywhere

attr_accessor :sugar_amount
attr_accessor :flour_amount
# attr_accessor will create both the getter and the setter methods for us
# attr_reader will only create the getter
# attr_writer will only create the setter 

  def initialize(name, sugar_amount, flour_amount, gluten_free)

    @name = name
    @sugar_amount = sugar_amount
    @flour_aount = flour_amount
    @gluten_free= gluten_free
  end
# THIS IS GCALLED A 'GETTER' OR accessorie method.
#Sugar_amount is an argument coming in from our initialize method(kicked off by the .new constructor)
# @sugar is the instance variable defined in our initialize method. it is set to the value of the argument being passed in .
#The instance variable can be called anywhere in our class , but not outside our class.
#If we want to get the value of @sugar outside our class, we wrap the variable in a getter method.
  def sugar # or can call it get_sugar
    @sugar
  end

#this is called  SETTER method or accessor method
  def set_sugar=(new_amount)
    #new_amount = new_amount/2
    @sugar = new_amount
  end
# THIS IS A CLASS METHOD
  def self.sugar_limit
    20
  end

  def details
      # p "inside the initialize method with sugar: #{sugar}"
      p "#{@name} cookie, with #{@sugar_amount}g of sugar, #{@flour_amount}g of flour."
        if @gluten_free
          p "#{@name} cookie is gluten free"
        else
          p "#{@name} cookie is not gluten free"
        end
  end

  def parent_cutting
    p cutting
  end
  def eat
    "Munch, munch, munch."
  end

  private

  def cutting
    "slice and dice"
  end
  def bake
  # the last line in a method , it's return value is automatically returned by the method
  "baking the cookie which contains #{@sugar}g..."
  end
end

# all methods are public unless they are under the umbrella of private
#baking, building, constructing => object
# construct object from a class , we now in memory have a var c , and stored into that var is a cookie object
# we construct objects from classes
#similar when we say my_array = Array.new
# similar to my_hash = Hash.new
# arrays hashes and objects are classes , and we construct instances of that class in objects
# p Cookie.sugar_limit
# cookie = Cookie.new("low fat",10, 15, true) # suglar
# cookie.details
# rich = Cookie.new("Rich", 50, 15, false)
# rich.details
heart_attack = Cookie.new("heart attack", 300, 100, true)
heart_attack.details
p heart_attack.sugar_amount
heart_attack.sugar_amount = 5
p heart_attack.sugar_amount
p heart_attack.details
# p heart_attack.get_sugar # access the getter variable
# heart_attack.set_sugar = 20 #set the setter variable with 20
# p heart_attack.get_sugar # it rebuilds the cookie with the new set sugar
# heart_attack.details # it now changes to 20 grams of sugar when printed
# p c.eat
# p c.parent_cutting
# # my_array = Array.new(5) # default value
# # my_hash = Hash.new("Hello") # default value
# p c.bake # we call methods on these classes by using the .NameOfMethod on it syntax

# my_array.sort # sort is a method in the array class
# my_hash.keys #keys is a method in the hash class
