# # kevin
# # p gets.chomp.split(//).reverse.join
#
# # tracey
# greeting = "hello"
# reverse_array = []
# index = greeting.size - 1
# while index >= 0
#   reverse_array.push greeting[index]
#   index -= 1
# end
#
# # p reverse_array.join("")
# p reverse_array.join
#
# # jose
# word =[]
# reversed =[]
# print "tape a word: "
# word = gets.chomp.split(//).each do |letter|
#   reversed.unshift(letter)
# end
# p reversed.join

# #ben
# greeting = "hello"
# array1 = greeting.split("")
# array2 = Array.new
#
# array1.length.times do
#   array2 << array1[-1]
#   array1.pop
# end
#
# puts array2.join

# chris
my_array = [1,2,3,4,5]
reverse_array = []
for i in 0..my_array.length-1
  reverse_array.insert 0, my_array[i]
end

p reverse_array










#
