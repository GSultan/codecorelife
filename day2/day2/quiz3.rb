# sandra
puts "how many sides does a hexagon have?"
response = gets.chomp
case response

when "six", "Six", 6.to_s
  puts "that is correct"
else
  puts "that is incorrect"
end
