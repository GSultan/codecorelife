=begin
def a
	puts "A was evaluated"
	return true
end



def b
	puts "B was evaluated"
	return true
end

puts a||b

puts a&&b
=end

def method(x,y)
puts "Hello"	
puts "The result is #{x*y}"
yield
yield
puts "goodbye"
end


method(3,5) {puts "how are you?"}
