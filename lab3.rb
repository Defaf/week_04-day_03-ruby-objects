=begin
Build a Date Tree
- make an DateTree class.
- It should start with 0 height, dates start at 0, and a name which we pass in
- get and set the height
- get and set the dates
- only get the name
- `oneYearPasses` method, which increases the height by 1
- `harvest` method when tree is 0 - 5 inches should return 0 dates
- `harvest` method when tree is 6 - 10 inches should increase our dates 1
- when the tree is 10 inches tall `harvest` will return “i am dead” and `oneYearPasses` return “i am dead”
=end

class DateTree
    attr_accessor :height
    attr_accessor :dates
    attr_reader :name
    # private methods we can se it also on dates= to prevent setting a new value 
    #private :height= 
    def initialize(name)
        @name = name
        @height = 0 
        @dates = 0 
    end
    def oneYearPasses
        if  self.height == 10 
            puts "I am dead"
        end 
        self.height = self.height + 1 
    end 
    def harvest
        if  self.height.between?(0,5)
            self.dates 
            puts "You have  #{self.dates} dates"
        elsif self.height.between?(6,10)  
            self.dates = self.dates + 1
            puts "You have  #{self.dates} dates"
            if  self.height == 10 
                puts "I am dead"
            end 
        end 
    end 
end 

tree = DateTree.new("tree1")
tree.height = 9
tree.dates = 2
tree.oneYearPasses
tree.height
tree.harvest
tree.oneYearPasses
tree.harvest
