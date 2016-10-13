require 'benchmark'
# require 'titleize'

n = 1000000

# push vs insert

# puts "KEVIN"
# Benchmark.bm do |x|
#   x.report do
#     n.times do
#
#       "hello".split(//).reverse.join
#
#     end
#   end
# end

puts "TRACEY"
Benchmark.bm do |x|
  x.report do
    n.times do

      greeting = "hello"
      reverse_array = []
      index = greeting.size - 1
      while index >= 0
        reverse_array.push greeting[index]
        index -= 1
      end

      reverse_array.join

    end
  end
end

# puts "BEN"
# Benchmark.bm do |x|
#   x.report do
#     n.times do
#
#
#       greeting = "hello"
#       array1 = greeting.split("")
#       array2 = Array.new
#
#       array1.length.times do
#         array2 << array1[-1]
#         array1.pop
#       end
#
#       array2.join
#
#
#     end
#   end
# end

puts "CHRIS"
Benchmark.bm do |x|
  x.report do
    n.times do


      my_string = "hello"
      my_string_output = ""

          for i in 0..my_string.length-1
            my_string_output.insert 0, my_string[i]
          end


    end
  end
end

puts "CHRIS S"
Benchmark.bm do |x|
  x.report do
    n.times do


      input_string = "hello"
           reversed_string = Array.new(input_string.length)
           for i in 0..input_string.length/2
             reversed_string[i] = input_string[input_string.length - i - 1]
             reversed_string[input_string.length - i - 1] = input_string[i]
           end
           reversed_string.join

   end
 end
end

puts "JACOB"
Benchmark.bm do |x|
  x.report do
    n.times do


      "hello".reverse


   end
 end
end
