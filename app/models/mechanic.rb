class Mechanic

  attr_accessor :name, :specialty
  @@all_mechanics = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all_mechanics << self
  end

  def self.all
    @@all_mechanics
  end

  def cars
    Car.all.select {|all_cars| all_cars.mechanic == self}
  end

  def car_owners
    cars.map {|mechanics| mechanics.carowner}
  end

  def owner_name
    cars.map {|mechanics| mechanics.carowner.name}
  end

end
