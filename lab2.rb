=begin
Create a `Thermostat` class
- should have a `@current_temp` and `@target_temp`
- should have a getter and setter for both
- should have method `increase_heat` that increases `@current_temp` by 1
- should have a method `decrease_heat` that decreases `@current_temp` by 1
- should have a method `turn_on` which checks the `@current_temp` and calls `increase_heat` or
 `decrease_heat` until it reaches the `target_temp`
=end
class Thermostat
    attr_accessor :current_temp
    attr_accessor :target_temp

    def initialize(current_temp, target_temp)
        @current_temp = current_temp
        @target_temp = target_temp
    end 
    def increase_heat
        self.current_temp = self.current_temp + 1
    end 
    def decrease_heat
        self.current_temp = self.current_temp - 1
        #puts " temp now is #{self.target_temp}"
    end 
    def turn_on
        puts "temp now is: #{self.current_temp}"
        while self.current_temp != self.target_temp do 
            if self.current_temp < self.target_temp
                self.increase_heat 
                puts "we increase temp now is: #{self.current_temp}"
            else
                self.decrease_heat 
                puts "we decease temp now is: #{self.current_temp}"
            end 
        end #end while loop 
        puts "temp now is suitable to the target temp which is: #{self.current_temp}"
    end 
end 

degree = Thermostat.new(44,30)
degree.target_temp = 25
degree.current_temp = 30
puts degree.turn_on