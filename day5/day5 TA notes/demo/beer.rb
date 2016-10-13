require './food.rb'

class Beer < Food
  def initialize(sugar, protein, fat, volume)
    super(sugar, protein, fat)
    @volume = volume
    puts "a beer was created with #{@sugar}g of sugar, #{@protein}g of protein, #{@fat}g of fat and #{@volume}ml of volume."
  end
end
