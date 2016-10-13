require "benchmark"

=begin 
Implement Binary search and linear search in Ruby then benchmark them with an array of a 100 elements. Which one is faster?

[Bonus]: Implement the binary search using recursion. 

=end

def linear_search(n)
	(1..100).to_a.shuffle.each do |x|
		if x == n
			break
		end
	end
end



def binary_search(n)
array = (1..100).to_a
#rand = array.sample
	until n == array[0]
		# puts array.inspect
		if n == array[array.length/2]
			# puts "found your #{n}"
			break
		elsif n > array[array.length/2]
			array.slice!(0..array.length/2)
		else 
			array.slice!(array.length/2..array.length-1)
		end
	end
end

# binary_search(88)	


	#check if n is equal to the random number
	#if not, it should check whether it's bigger or smaller than the middle term 
	#if it's bigger, it should compare itself against the first 50th elements (array[0]..array[])
	#array.

			



# def binarysearch(array, n)
# 	while array[n] !== n
# 	if array[n] == n
# 		n
# 	elsif 
# end

n = 1000000
Benchmark.bm do |x|
  x.report { n.times { linear_search(10)      } }
  x.report { n.times { binary_search(10) } }
end