class Bone
  attr_accessor :size

  def initialize(size)
    @size = size
  end
end

class Dog

  def initialize (color,type)
    @color =color
    @type = type
    @array =[]
  end

  def give(bone)
    if @array.length < 3
      @array << bone
    else
      puts "I have too many bones."
    end

  end

  def eat
    if @array.length > 0
      # this size is coming from the bone class, it represents the size of bone, not size of array
      puts "yummy! I ate #{@array.pop.size} bone"
    else
      puts "there are no bones"
    end
  end
end

dog = Dog.new("red", "someKind")
bone1 = Bone.new("big")
bone2 = Bone.new("small")

dog.give(bone1)
dog.give(bone1)
dog.give(bone2)
dog.give(bone2)
dog.give(bone1)
dog.give(bone2)

dog.eat
dog.eat
dog.eat
dog.eat
dog.eat
dog.eat

# dg =Dog.new("big","black","KG")
#
# dg.give
#
# dg.size = "small"
# dg.give
#
# dg.size = "medium"
# dg.give
#
# dg.eat
# dg.eat
# dg.eat
