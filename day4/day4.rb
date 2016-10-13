# # Day 4 - hashes
#
# dictionary = {}
# # or
# dictionary = Hash.new
#
dictionary = { "book" => "collection of written words on pages",
"adam" => "the first",
"apple"=> "fruit"}
#
# # hashes are made up of keys and values separated by a ruby rocket (=>)
#
# # to look up value in array od array[1]
# puts dictioanry["book"]

# guy = {"name" => ["Guy","Gregori"]
#       "birthplace" => "Russia",
#       "DOB" => "June 15"}
#
# puts Guy["name"]
# puts Guy["wealth"] # won't throw an error , but rather will add a nil in there
#
# puts Guy.fetch("wealth") # fetch will raise an error if the key doesn't exist
#
# puts Guy.fetch("address", "not specified")  # this allows  you to stipulate a default alue in case the keyy isn't stored in hash
# # car.keys will return an array
# garage = {"Porsche" => "Carrera",
#           "GMC" => "Terrain",
#           "Lambo" => "Gallardo"}
#
# car.keys #this will give you an array of keys
# # grabbing key from a specified value
#
# dictionary = Hash.new("Unknown") #default value for any key that you try to retreive
# p dictioanry["pulp"] = "soft,watery paper"
# p dictionary["fiction"] = "imaginary literature"
# p dictionary.keys # will return all the keys in our ash in the form of an array
# # brackets are optional ## Hash.new is same as Hash.new()
# p dictionary.keys - print all the keys
# dictionary = Hash.new(0)
# p dictionary.values # will return all the values in our hash in the form of an array

# dictionary.keys.each do |key|
#   puts key
# end
# # iterate through all keys
#
#
# dictionary.value.each do |value|
#   puts value
# end
#
# Canada = {"Ontario" => "Ottawa",
# "British Columbia" => "Victoria",
# "Alberta" => "Edmonton",
# "Saskatchewan" => "Saskatoon"}
#
# Canada.each do |key, value|
#   #Canada.each do |key_and_value|
#   puts "For province #{key}, the capital is #{value}"
# end
# #
# # dictionary.each do |key, value|
# #   puts "key is #{key} and value is #{value}"
# # end
#
# Canada.each_pair do |province_and_capital|
#   puts "#{province_and_capital.last}, #{province_and_capital.first}"
#   puts "#{province_and_capital[1]}, #{province_and_capital[0]}"
# end
#
# provinces.each_key {|k| puts k}
# provinces.each_value {|v| puts v}
#
# cityratings={"Vancouver" => 10, "Richmond" => 8, "Burnaby" => 7}
#
# cityratings.each do |keys, values|
#   puts keys
# end
#
# cityratings.each do |keys, values|
#   puts values
# end
#
# cityratings.each_key do |keys|
#   puts keys
# end
#
# cityratings.each_value do |values|
#   puts values
# end
#
# p cityratings.keys
# p cityratings.values

#HASHES AND ARRAYS
#
# Canada = {
#   "BC" => ["Van", "Vic", "Abbot"],
#   "AB" => ["Ed", "Calg", "Red Deer"],
#   "ON" => ["Tdot", "Hammer", "Thill"]
# }
#
# Canada.each do |province, cities|
#   cities_string=""
# cities.each_with_index do |city, index|
# # if the city is the last city
#   if (index == cities.length-1)
#     cities_string += "and #{city}."
#   else
#     cities_string += "#{city}, "
#   end
#
# end
# puts "The province of #{province} has the following cities #{cities_string}"
# end
#
# personal_info = [
#   person1 = {"first_name"=>"Guy",
#   "last_name"=>"Viner",
#   "age"=>28},
#   person2 = {"first_name"=>"Jacob",
#     "last_name"=>"Tran",
#     "age"=>30}
# ]
# p personal_info
#
# teachers = [{},
#             {}
#               ]
#
# person1 = {"first_name" => "Jacob",
# "last_name"=>"Tran", "age"=> 37 }
#
# person2 = {"first_name" => "Jacob",
# "last_name"=>"Tran", "age"=> 37 }
#
# #print the first name andlast name of each teacher
# teachers.each do |teacher|
#   puts "#{teacher['first_name']} #{teacher['last_name']}"
# end

#
# array = ["hello", "greetings", "hola", "hi"]
#
# new_hash = {}
# for i in 0..array.length-1
#   symbol = array[i].to_sym
#   new_hash[symbol] = array[i].length
# end
#
# puts new_hash
method = function = routine
