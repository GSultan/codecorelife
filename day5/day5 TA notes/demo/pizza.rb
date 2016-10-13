require './food.rb'

class Pizza < Food
  def initialize(sugar, protein, fat, weight)
    # super her will call the initialize method from the class we are inheriting from
    super(sugar, protein, fat)
    @weight = weight
    puts "a pizza was created with #{@sugar}g of sugar, #{@protein}g of protein, #{@fat}g of fat and #{@weight}g of weight."
  end

  def eat
    p "pick up a slice"
    super
  end
end
