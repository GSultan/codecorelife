require "./animal.rb"
require "./bird.rb"
require "./helper_method.rb"

class Cat < Animal
  include HelperMethod
  def initialize(name)
    super(name)
  end

  def catch(bird)
    if randomize >= 51
      puts "#{self.name} caught #{bird.name} and ate it"
    else
      puts "#{bird.name} got away!"
    end
  end
end
