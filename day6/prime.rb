# Write a recursive method to calculate the fibonacci number of a given number n.
# 1, ,1 , 2 , 3 , 5 ,
  i   i   i+i i




def fib(n)
	for i in 1..n
		if n == 1
			n
		else
			i + (i-1)
		end
	end
end

p fib(2)