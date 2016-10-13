# design, idea, concept is the class
#
# class names are capitalized and camelcased
#   ThisIsExampleOfCamelCase
#   the file containing our class should be typically lowercase and snake_case : ie. cookie.rb, guy_viner.rb
#
class Cookie
  def bake
    # the last line in a method , it's return value is automatically returned by the method
    "baking the cookie..."
  end

  def eat
    "Munch, munch, munch."
  end

end


#baking, building, constructing => object
# construct object from a class , we now in memory have a var c , and stored into that var is a cookie object
# we construct objects from classes
#similar when we say my_array = Array.new
# similar to my_hash = Hash.new
# arrays hashes and objects are classes , and we construct instances of that class in objects
c = Cookie.new
puts c.bake # we call methods on these classes by using the .NameOfMethod on it syntax
puts c.eat

# my_array.sort # sort is a method in the array class
# my_hash.keys #keys is a method in the hash class
