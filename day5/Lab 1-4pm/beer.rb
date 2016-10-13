require '.food.rb'

class Beer < Food
  initialize(sugar,protein,fat,volume)
  @volume=volume
  super(sugar,protein,fat)
    puts "a pizza was created with #{@sugar}g of sugar, #{@protein}g of protein and #{@fat}g of fat, and #{@volume}ml of volume."
  end
end
