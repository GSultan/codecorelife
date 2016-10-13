# guy
array = [[1,2,3],[4,5,6],[7,8,9]]
new_array = []

array.each do |inside|
  new_array << inside.map {|y| y*y}
end

p new_array


#ben
print array.map { |x| x.map { |y| y*y }}

new_array = array.map do |x|
              x.map do |y|
                y*y
              end
            end
