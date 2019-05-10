class Car

  attr_accessor :carowner, :mechanic, :make, :model, :classification
  @@all_cars = []
  def initialize(carowner, mechanic, make, model, classification)
    @carowner = carowner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    @@all_cars << self
  end

  def self.all
    @@all_cars
  end

  def self.classifications
    @@all_cars.map {|all_cars| all_cars.classification}
  end
  def mechanics_spec(classification)
    @@all_cars.select {|all_cars| all_cars.mechanic.specialty == classification}
  end
end
