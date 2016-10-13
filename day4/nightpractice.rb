# my_array = [1,4,5,23,14,"Hello there", false, nil]
#
# new_array = []
#
# my_array.each do |x|
#   if x.is_a?(Integer) && x > 10
#     new_array << x
#   else
# end
# end
#
# p new_array
#

questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]

array = Array.new
questions.each do |x|
  if x.length >= 14
    array << x
  end
end

p array
