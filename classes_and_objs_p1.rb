class MyCar
    
  attr_accessor  :speed,:color 
  attr_reader :year

  def initialize(year,model,color)
    @year = year
    @model = model
    @color = color
    @speed = 0
  end

  def speed_up(increase)
    @speed += increase
  end

  def brake(decrease)
    @speed -= decrease
  end

  def shut_off
    @speed = 0
  end

  def spray_paint(color)
    self.color = color
  end
end


honda_car = MyCar.new(2010,'Civic','Gray')
honda_car.speed_up(25)
puts "You are going #{honda_car.speed} mph."
honda_car.brake(10)
puts "You are going #{honda_car.speed} mph."
honda_car.shut_off
puts "You are going #{honda_car.speed} mph."

honda_car.color = "Black"
puts "This car is the color #{honda_car.color}"
puts "This car is a #{honda_car.year} Civic."

honda_car.spray_paint("Maroon")
puts "You're car is now the color #{honda_car.color}"

