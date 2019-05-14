=begin
    class Rectangle
        def initialize(length, width)
        @length = length
        @width = width
        end
    
        def area
        @length * @width
        end
    
    end

    long = Rectangle.new(40,5)
    long.area
=end
class Person 
    #attr_reader :first_name, :last_name     #for reading getter 
    #attr_writer :first_name, last_name    #for writing setter
    
    # we can use this better than attr_reader and attr_writer
    attr_accessor :first_name
    attr_accessor :last_name
    def initialize(first_name, last_name )
        @first_name = first_name
        @last_name  =last_name
    end 

    def introduction 
        puts "Hello my name is "+ @first_name + " "+ @last_name
    end 
end 

person1 = Person.new("Dhaffaf","Kamfar")
person1.introduction
person1.first_name
person1.last_name
person1.first_name = "Test"
puts person1.first_name

class Car
    attr_accessor :fuel 
    attr_accessor :color
    attr_accessor :model
    
    def initialize(model, color)
        @model = model
        @color = color
        @fuel = 100
    end 
    def drive
        self.fuel = self.fuel - 1
    end
    
    def road_trip(miles)
        miles.times { self.drive }
        "You only have #{self.fuel} gallons left after your trip"
    end
end 
celica = Car.new("Toyota Celica", "green")
puts celica.fuel
6.times do 
    celica.drive
end 

puts celica.fuel 
celica.color = "Yellow"
puts celica.color
celica.model = "Mini Cooper"
puts celica.model
celica.road_trip(30)
puts celica.fuel