# lib/car.rb

class Car
  def initialize(color, make, model, sound)
    @color = color
    @make = make
    @model = model
    @sound = sound
    @miles = 0
  end

  def rev
    puts @sound
  end

  def set_price(price)
    @price = price
  end
end
