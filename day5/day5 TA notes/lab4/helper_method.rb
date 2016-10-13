module HelperMethod
  attr_accessor :random_number
  def randomize
    @random_number = rand(1..100)
  end
end
