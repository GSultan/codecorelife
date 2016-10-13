# "a" > "z"
#
# "a" * 5

# johnny
# time = 1
#  "a".upto("z") do |letter|
#    puts letter * time+=1
#  end

# chris
# time = 1
# for letter in "a".."z"
#   puts letter * time+=1
# end

# another option...
time = 1
("a".."z").each do |letter|
  puts letter * time+=1
end
