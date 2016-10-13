## METHODS

## methods in ruby start with a definition
#
# def say_hello
#   puts "Hello Everyone!"
# end
#
# say_hello()
# say_hello
#
# # in ruby the last line of your method is automatically returned
# def multiply
# results = []
#   results << 5  * 6
#   results << 1 + 1
#   results << 2 * 2
# end
#
# puts multiply
#
# def multiply(number1, number2)
# def multiply(x, y)
#   x * y
# end
#
# multiply(2, 2)
## or multiply 2,2

# don't put return if you wanna return the last line of code
# # If you wanna hijack the return to return earlier value , put return in front of the row
#
# def sum(a,b)
#   return a** b
#   a = b
# end
#
# p sum(2,5)
#
# def sum (a, b, *c)
#   p a
#   p b
#   p c
# end
#
# sum(2,5,10,12,13,15,2,4,6)
#
# #@###########################
#
# def sum(*c)
#   total = 0
#   c.each do |num|
#     total += num
#   end
#
#   total
# end
#
# p sum(2,3,5,6,7,7,4,5,6,4,3)
#
# ################
# def classifier(a)
#   case a
#   when Integer
#     print "Integer"
#   when String
#     print "String"
#   when Array
#     print "Array"
#   else
#     print "Something else"
# end
# end
#
# classifier


# ## optional parameters
# def sum(a=2, b=0)
#   # 2 + 0
#   # a=0 b = 0 ==> 0 + 0
# a +b
# end
#boolean methods
# p sum()
def cool?(name)
if (name == "Jacob")
  return true
else
  return false
end
end

p cool? "Jacob"
p cool? "Nari"
p cool? "Bob"

## is _ a ? will only return true or false
