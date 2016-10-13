class FizzBuzz

  attr_accessor :fizz
  attr_accessor :buzz
  attr_accessor :name

  def initialize(fizz, buzz)
    @fizz = fizz
    @buzz = buzz
    @array = []
  end

  def run
    for i in 1..100
      @name = "ben#{i}"
      p @name
      if i % @fizz == 0 && i % @buzz == 0
        @array << 'fizzbuzz'
      elsif i % @fizz == 0
        @array << 'fizz'
      elsif i % @buzz == 0
        @array << 'buzz'
      else
        @array << i
      end
    end
    print @array
  end

  # (1..100).to_a.each do |x|
  #   # fizzbuzz x
  # end
end


fb = FizzBuzz.new(3,5)
fb.run
fb.fizz = 2
fb.buzz = 3
fb.run


# 10.times do
  # obj_arr << FizzBuzz.new(3,5)
#   p fb.name
#   p "#{fb.name} = FizzBuzz.new(5,6)"
#   binding.eval("#{fb.name} = FizzBuzz.new(5,6)")
#   binding.eval("a=10")
#   p a
#   # p ben100
# # end
# # binding.eval("a = 10")
# # puts a
#
# 0.fizz = 10
# 0.buzz = 8
# 0.run


# meta programming
