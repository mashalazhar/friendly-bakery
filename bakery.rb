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

# puts oatmeal_cookie = Cookies.new('The Oatmeal Raisin', 'Oats of Goodness', "$3")
# mashals_bakery = Bakery.new
# mashals_bakery.addItem(oatmeal_cookie)

# puts rasberry_muffin = Muffins.new('Raisin Berries', 'Berry Good!', "$4")
# mashals_bakery = Bakery.new
# mashals_bakery.addItem(rasberry_muffin)

# chocolate_cake = Cakes.new('Brooklyn Blackout', 'Fudgin Delicious', "$28")
# mashals_bakery = Bakery.new
# mashals_bakery.addItem(chocolate_cake)
# pp Cakes.new('Brooklyn Blackout', 'Fudgin Delicious', "$28")


# # •	Each item sold should have
# # o	a description
# # o	a price
# # •	There should be a way for a person on the site to receive an email with a catalog of all items sold

# # Challenge: In programming, in order to not repeat yourself, sometimes we have to store our data in a universal format that can be utilized in multiple areas. This is similar to how you would write recipe instructions down so in the future you can just use that as a template.

# # That all being said, try the following:
# # 1.	Create one class per generic category of item sold in the bakery
# # •	Cookie class
# # •	Cake class
# # •	Muffin class
# # •	Use these classes to create 1 object per item being sold (e.g if you have 3 cookies for sale you would create 3 Cookie objects based on one Cookie class)
# # •	Each item should have the following attributes
# # •	description
# # •	price
 
# These objects represent digital versions of cookies, so now use these objects as data that you can utilize when displaying information about your cookies, cakes and muffins.
# Try using these objects to
# •	display information on price and description on the subcategory pages
# •	generate the catalog email to send to the requesting user
 
# Completion Requirements:
# •	have a page listing all cookies sold
# •	have a page listing all muffins sold
# •	have a page listing all cakes sold
# •	use the Sendgrid API to send an email to the user’s email with a catalog of all items sold
