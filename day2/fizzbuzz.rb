# # fizzbuzz
#
# for i in 1..100
#   if i % 3 != 0 && i % 5 != 0
#     puts i
#   elsif i % 3 "FIZZ" if i

for i in 1..100
if i % 5 == 0 && i % 3 == 0
  puts "FIZZBUZZ"
elsif  i % 5 == 0
  puts "BUZZ"
elsif i % 3 == 0
  puts "FIZZ"
else
  puts i
end
end

100.times do |x|
  puts x
  puts "Hello Cohort 15!" if x.odd?
end

# ternary operand
# condition? true: false
x = 44
x > 5 ? puts "Hello" : puts "Goodbye"

if x > 5
  puts "Helo"
else
  puts "Goodbye"
end
