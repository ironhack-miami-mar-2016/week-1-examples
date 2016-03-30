require_relative "lib/payable_by_hour.rb"
require_relative "lib/hourly_employee.rb"
require_relative "lib/multi_employee.rb"

izzy = HourlyEmployee.new(55, 10)
ike = MultiEmployee.new(55, 10, 52000)

puts "Izzy made #{izzy.calculate_salary}"
puts "Ike made #{ike.calculate_salary}"
