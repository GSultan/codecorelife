class Rectangle

attr_accessor :width # the instance variable must match our symbol name in attr_accessor
attr_accessor :height #but does not have to necessarily match the argument name in initialize

  def initialize(width, height)
    @width = width
    @height = height
  end

def area
  @widthh * @height
end

def is_square?
  if @width == @height
    return true
  else
    return false
end

#option 2
# @width == @height
  #end

end

end

#test
rect1 = Rectangle.new(10,20)
rect2 = Rectangle.new(40,50)
rect3 = Rectangle.new(30,30)

print "Rectangle 1, are you square?"
p rect1.is_square?

print "Rectangle 2, what is your area?"
p rect2.area

print "Rectangle 3, are you square?"
p rect3.area #900
p rect3.is_square? #true

#test attr_accessor
rect3.width = 100
rect3.height = 2
p rect3.area # 200
p rect3.is_square? #false
