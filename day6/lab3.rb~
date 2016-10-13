=begin

#############3
def multiply(array)

		if array.size == 0
			1
		elsif array[0].is_a? Array
				multiply(array[0] * multiply(array[1..-1]))
		else
			array[0] * multiply(array[1..-1])
		end
end

p multiply([1,2,4,3]) #=> 6
p multiply([0]) #=> 1
######################3


Reverse engineer Array’s flatten method using recursion.

Examples:
flatten([ 1, 2, [3, [4, 5] ] ]) # should return [ 1, 2, 3, 4, 5 ]
flatten([ 'a', [ 'b', ['c'] ] ]) # should return [ 'a', 'b', 'c' ]



def flattener(array)
p array
	if array.first.nil?  
	array
	elsif 
	array.first.is_a? Array 
	array.first + flattener(array[1..-1])
	else
	[array.first] + flattener(array[1..-1]) 
	
	end
end
	
flattener([1,[2,1],2,3,[4,5],6])

=end 

p @@new_array = []
def flatten(arr)

  p arr
  if arr.first.nil?
    arr
  elsif arr.first.is_a? Array
    flatten(arr.first) + flatten(arr[1..-1])
    
  else
    @@new_array.push(arr.first) 
    p @@new_array
    flatten(arr[1..-1])
  end
end

p flatten([1,[7,8],3,4,6,[6,8]])






