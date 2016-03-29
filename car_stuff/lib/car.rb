# lib/car.rb

class Car
  def initialize(color, make, model)
    @color = color
    @make = make
    @model = model
    @miles = 0
  end

  def rev
    puts "Broom"
  end

  def set_price(price)
    @price = price
  end
end
