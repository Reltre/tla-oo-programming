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

  def self.gas_mileage(gallons,miles)
    puts "#{(miles / gallons)} miles per gallon."
  end

  def to_s
    "This car is a #{self.color} #{self.year} #{@model}.  She rides 
like a dream."
  end
end

MyCar.gas_mileage(11,500)
honda_car = MyCar.new(2010,"Civic","Black")
puts "#{honda_car}"

#3
=begin
You get this error because by calling bob.name = "Bob" you are
trying to call a setter method that does no exist.  We can fix
this by changing "attr_reader :name" to "attr_accessor_name"

  
=end
