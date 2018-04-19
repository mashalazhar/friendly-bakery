require "pp"
p "start here"

class Bakery  
    attr_accessor :cookies,:muffins,:cakes
    def initialize
        @cookies = []
        @muffins = []
        @cakes = []
    end
      
    def addItem(item)
        if item.class.name == "Cookies"
            p "Cookies Available"
            @cookies.push(item)
                puts "I am adding a cookie."
        elsif item.class.name == "Muffins"
            p "Muffins Available"
            @muffins.push(item)
                puts "I am adding a muffin."
        elsif item.class.name ==  "Cakes"
            p "Cake Available"
            @cakes.push(item)
                puts "I am adding a cake."
        else
            p "Nothing to shelf!"
        end 
    end
end  

class Cookies 
    def initialize(name,description,price)
        @name = name
        @description = description
        @price = price
    end
end

class Muffins 
    def initialize(name,description,price)
        @name = name
        @description = description
        @price = price
    end
end

class Cakes 
    def initialize(name,description,price)
        @name = name
        @description = description
        @price = price
    end
end




# Completion Requirements:
# •	have a page listing all cookies sold
# •	have a page listing all muffins sold
# •	have a page listing all cakes sold
# •	use the Sendgrid API to send an email to the user’s email with a catalog of all items sold
