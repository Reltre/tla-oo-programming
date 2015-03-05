
module Hybrid
  @@electric_mode = false
  def switch_mode
    @@electric_mode = 
    @@electric_mode == false ? true : false 
  end

  def electric_on?
    @@electric_mode
  end 
end


class Vehicle

  attr_accessor :color 
  attr_reader :model, :year
  
  @@number_of_vehicles = 0 

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0
    @@number_of_vehicles += 1
  end

  def self.how_many_vehicles
    puts "There are #{@@number_of_vehicles} vehicles."
  end

  def speed_up(increase)
    @speed += increase
    puts "You increase your speed by #{@speed} mph"
  end

  def brake(decrease)
    @speed -= decrease
    puts "You decrease your speed by #{@speed} mph"
  end

  def current_speed
    puts "Your current speed is #{@speed} mph."
  end

  def shut_off
    @speed = 0
    puts "The car is now off"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new car color is #{color}."
  end

  def self.gas_mileage(gallons,miles)
    puts "#{(miles / gallons)} miles per gallon."
  end

  def age
    puts "This #{self.model} is #{calculate_age} year old."
  end

  private

  def calculate_age
    current_time = Time.now
    current_time.year - self.year
  end


end
 
class MyCar < Vehicle
  include Hybrid

  NO_OF_DOORS = 4

  def to_s
    "This car is a #{self.color} #{self.year} #{@model}.  She rides 
like a dream."
  end
end

class MyTruck < Vehicle
  HAS_BED = true

  def to_s
    "This car is a #{self.color} #{self.year} #{@model}.  She rides 
like a dream."
  end
end

claire = MyCar.new(1999, "corolla", "Red")
leeroy = MyTruck.new(2000,"F150","White")


claire.speed_up(15)
leeroy.speed_up(20)
claire.spray_paint("Green")
leeroy.spray_paint("Red")
claire.brake(5)
leeroy.brake(10)
MyTruck.gas_mileage(15,200)



puts Vehicle.ancestors,"\n"
puts MyTruck.ancestors,"\n"
puts MyCar.ancestors,"\n"

claire.age

class Student
  attr_reader :name
  

  def initialize(name,grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  def to_s
    "I'm a student"
  end

  protected
  def grade
    @grade
  end
end


stacy = Student.new("Stacy",95)
joe = Student.new('Joe',87)
puts 'Well done!' if stacy.better_grade_than?(joe) 

#8
#We get this error because the 'hi' method for object
#bob is defined as private.  If we want to use it in this
#context, we'll need to remove the private keyword from the
#class Person.















