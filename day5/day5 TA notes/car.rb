class Car
  def initialize(model, type, capacity)
    p "the car has left the assembly line"
    p "You've created a #{model} #{type} with seating for #{capacity}."
  end

  def self.max_speed
    240
  end

  def drive
    p ignite_engine
    "we are driving..."
  end

  def park
    "we are parking."
  end

  def stop
    p "we have stopped."
    # p ignite_engine # "igniting engine..." would be returned
    pump_gas # what does this inner method return
  end

  private

  def ignite_engine
    "igniting engine..."
  end

  def pump_gas
    "pumping gas..."
  end

end

# testing
p Car.max_speed
car = Car.new("Model S", "90D", 5)
# p car.ignite_engine # throws an error b/c i'm calling outside the class
p car.drive
p car.park
p car.stop
# p car.pump_gas

tesla = Car.new("model x", "90D", "8")
porsche = Car.new("carrera", "4WD", "4")
mazda = Car.new("rx-8", "RWD", "2")

tesla.drive
porsche.drive
mazda.drive

porsche.stop















#
