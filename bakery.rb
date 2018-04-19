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
    attr_accessor :name, :price, :description, :photo
    def initialize(name,description,price, photo)
        @name = name
        @description = description
        @price = price
        @photo = photo
    end
end

class Muffins 
    attr_accessor :name, :price, :description, :photo
    def initialize(name,description,price, photo)
        @name = name
        @description = description
        @price = price
        @photo = photo
    end
end

class Cakes 
    attr_accessor :name, :price, :description, :photo 
    def initialize(name,description,price, photo)
        @name = name
        @description = description
        @price = price
        @photo = photo
    end
end