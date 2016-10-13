def sum(array)

	if array.size == 0
		0
	else
	# the sum of the first element + sum of subarray of second to last elements 
		array[0] + sum(array[1..-1])
		#another solution is array.pop + sum(array)
		#but sum(array) + array.pop
	end
end

puts sum([1,2,3,4,5]) 
puts sum((1..100000).to_a) # this will give stack level too deep exception 


