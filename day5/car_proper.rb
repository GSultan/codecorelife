class Car
# instance variables @
  def initialize(model, type, capacity)
    p "The car has left the assembly line"
    p "You've created model type #{model}, of type #{type}, with seating for #{capacity}."
  end

# info method is defined by def self.X
  def self.max_speed
    240
  end
  def drive
    p ignite_engine
    "driving"
  end
  def park
    "parking"
  end
  def stop
    "stop at red light"
    pump_gas # what does this inner method return ?
  end

  private

  def ignite_engine
    "igniting engine"
  end
  def pump_gas
    "pumping gas"
  end
end

# testing , not typically done in the class file . usually once it's working , no other code goes inside the class.
#all the other logic goes in a different file
#testing
p Car.max_speed
car = Car.new("model S", "90D", 5)
# #  p car.ignite_engine # throws an error b/c it's being called from outside the class
tesla = Car.new("T","Seden",8)
# porsche = Car.new
# mazda = Car.new
#
# p  tesla.drive
# p  porsche.drive
# p  mazda.drive
#
# p  porsche.stop
p car
# p car.park
# p car.stop
# p car.pump_gas
