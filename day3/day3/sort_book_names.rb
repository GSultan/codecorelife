# jeff
books = []
input = 0
no_caps = ["The", "A", "And", "Of"]

while input != "Exit"
  print "Give me a book name: "
  input = gets.capitalize.chomp

  words = input.split
  words.each_with_index do |word, index|

    word.capitalize!

    if index > 0
      no_caps.each do |bad_word|
        if word == bad_word
          word.downcase!
          break
        end
      end
    end
  end

  # "fifty shades of grey"
  # ["fifty", "shades", "of", "grey"]
  # ["Fifty", "Shades", "Of", "Grey"]
  # FiftyShadesOfGrey

  books << words.join(" ")
end
books.pop # will remove the last element of an array
books.sort!
p books


# def titlecase(title)
#   words = title.split
#   no_caps = ["the", "a", "and", "of"]
#
#   for i in 0...words.length
#     if !no_caps.include?(words[i]) || i === 0
#       words[i].capitalize!
#     end
#   end
#   return words.join(" ")
# end
#
# books = []
# input = 0
# while input != "exit"
#   print "Give me a book name or type 'exit' to exit: "
#   input = gets.chomp
#   books << titlecase(input) if input != 'exit'
# end
#
# puts books.sort
