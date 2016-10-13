############## Make two classes dog and bones.
###############The dog class must have an initialize method that takes dog's colour and type.
####################### The bone must have an initialize method that assigns a size for the bone.
## The dog class must have a give method that takes a bone object and adds it to an array of bones for the dog.
# The dog can take a maximum of three bones so if you give it more than three it will will print, I have too many bones.
#
# The dog class must have an eat bone method so that when you call it it removes a bone from the array of bones and prints
# "yummy! I ate 'big' bone" the 'big' part comes from the size attribute of bone.

class Dog
  attr_accessor :colour
  attr_accessor :type
    def initialize(colour,type)

      @colour = colour
      @type = type
      @array = []
      # @array = []
    end
      # array = []

    def give(bone)
      if @array.length < 3
        @array<<bone
      else
        puts "I have too many bones"
      end
    end


  def eat
    if @array.length > 0
      puts "Yummy! I ate #{@array.pop.size} bone"
    else
      puts "there are no bones"
    end
  end
end


class Bone
  attr_accessor :size
  def initialize(size)
    @size = size
  end
end

dog = Dog.new("white","husky")
bone = Bone.new("Large")
bone2 = Bone.new("Medium")

dog.give(bone)
dog.give(bone)


dog.eat
dog.eat
dog.eat
dog.eat
