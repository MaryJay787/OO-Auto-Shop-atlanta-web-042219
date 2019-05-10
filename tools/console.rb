require_relative '../config/environment.rb'

james = CarOwner.new("James")
rick = CarOwner.new("Rick")
richard = CarOwner.new("Richard")

tech_one = Mechanic.new("Dave", "clunker")
tech_two = Mechanic.new("Brick", "antique")
tech_three = Mechanic.new("Luck", "exotic")

honda = Car.new(james, tech_one, "Honda", "Civic", "clunker")
tayota = Car.new(rick, tech_two, "Tayota", "Camery", "antique")
chevy = Car.new(richard, tech_three, "Chevy", "Sports Car", "exotic")
def reload
  load 'config/environment.rb'
end
binding.pry

puts "binding didn't hit"
