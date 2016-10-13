# Create a Pizza class and a Beer class. They both should have sugar, protein and fat attributes. The Pizza class should have weight attribute and the beer class should have volume attribute.  Create a parent Food class and use inheritance.
#

class Food
  def initialize(sugar, protein, fat)
    @sugar = sugar
    @protein = protein
    @fat = fat
    puts "Your food has #{@sugar} grams of sugar, #{@protein} grams of protein, and #{@fat} grams of fat"
  end

  def diet
    puts "You've created a diet version of your food with, half the sugar at #{@sugar/2} grams."
  end

  def calcount
    "#{@sugar*@protein*@fat} is your calorie total for this food"
  end
end

class Pizza < Food
  def initialize(weight, *args) #SPLAT operator # Pizza.new('56kg', '45g', '23g', '200g') # => weight = '56kg', *args = ['45g', '23g', '200g']
    # super(*args)
    #  super('45g,')
    super(*args) #super here replaces having to re-declare the instance variables
    @weight = weight
  end

  def info
    puts "You've baked a pizza. #{@weight} is the weight. Your pizza has #{@sugar} grams of sugar, #{@protein} grams of protein, and #{@fat} grams of fat, and #{calcount}."
  end
end

class Beer < Pizza
  def initialize(volume, *args)
    super(*args)
    @volume = volume
  end

  def dinner
    puts "Your dinner consists of #{@volume}ml of beer, #{@weight} is the weight. Your pizza has #{@sugar} grams of sugar, #{@protein} grams of protein, and #{@fat} grams of fat, and #{calcount}."
  end
end

chips = Food.new(10,20,30)
chips.diet
domino = Pizza.new(100,100,100,100)
domino.diet
bud = Beer.new(325,100,100,100,100)
bud.dinner
