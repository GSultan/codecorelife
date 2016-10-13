# Create a Pizza class and a Beer class. They both should have sugar, protein and fat attributes. The Pizza class should have weight attribute and the beer class should have volume attribute.  Create a parent Food class and use inheritance.
class Food
  def initialize(sugar, protein, fat)
    # @@food_type # this variable would change everytime we create a new food, and would be the same value over all instances of food.
    @sugar = sugar
    @protein = protein
    @fat = fat
    #puts "a food was created with #{sugar}g of sugar, #{protein}g of protein and #{fat}g of fat."

    def eat
      "I am eating..."
    end
  end
end
