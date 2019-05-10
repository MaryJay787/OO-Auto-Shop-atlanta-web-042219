class CarOwner

  attr_accessor :name
  @@all_carowners = []

  def initialize(name)
    @name = name
    @@all_carowners << self
  end

  def self.all
    @@all_carowners
  end

  def cars
    Car.all.select {|all_cars| all_cars.carowner == self}
  end

  def mechanics
    cars.select {|car_owners| car_owners.mechanic}
  end

  def self.average_cars
    cars.select {|carss| carss.car}.count.fdiv(arr.size)
  end

end
