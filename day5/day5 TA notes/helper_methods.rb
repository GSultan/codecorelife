module HelperMethods
  def name_display
    name.squeeze(" ").capitalize
  end

  def calculate_pay
    100 + 100
  end

  def determine_tax
    100 * 0.5
  end
end

# one or the other
# require "./helper_methods.rb"

class Car
  attr_accessor :name
  # include will bring all the methods from the module to this class as instance methods
  include HelperMethods
end

# no need to instantiate class, class method
# extend HelperMethods
