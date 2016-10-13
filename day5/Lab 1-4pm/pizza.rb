require './food.rb'

class Pizza < Food
  def initialize(sugar,protein,fat,weight)
    super here will call the initialize method from the class we are inheriting from 
    @weight=weight
    super(sugar,protein,fat)
    puts "a pizza was created with #{@sugar}g of sugar, #{@protein}g of protein and #{@fat}g of fat, and #{@weight}g of weight."
  end

end
