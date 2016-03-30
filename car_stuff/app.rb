# app.rb

require_relative "lib/car.rb"
require_relative "lib/person.rb"

my_car = Car.new("black", "Mazga", "Mazga3", "Broom")
my_car.rev


my_old_car = Car.new("grey", "Hunda", "Fat", "Put put put put")
my_old_car.rev

my_car.visit_city("Homestead")
my_car.visit_city("Fort Lauderdale")
my_car.visit_city("Tampa")

my_car.print_cities


nizar = Person.new("Nizar", 29)

puts nizar.name
puts nizar.age

# Should work
nizar.age = 30

# Shouldn't work
nizar.name = "sldfjlsdfjsd"
