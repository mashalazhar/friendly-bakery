require 'sinatra'


get '/index' do
    erb :index
end

get '/cakes' do
    erb :cakes
end

get '/cookies' do
    erb :cookies
end

get '/muffins' do
    erb :muffins
end

post '/contact' do
    erb :contact
end

class bakery
    def initialize :cakes :cookies :muffins

        def cakes(description, price)
            @description = description
            @price = price
        end 

        def cookies(description, price)
            @description = description
            @price = price
        end 

        def muffins(description, price)
            @description = description
            @price = price
        end 

    end 
end 


# •	Each item sold should have
# o	a description
# o	a price
# •	There should be a way for a person on the site to receive an email with a catalog of all items sold

# Challenge: In programming, in order to not repeat yourself, sometimes we have to store our data in a universal format that can be utilized in multiple areas. This is similar to how you would write recipe instructions down so in the future you can just use that as a template.

# That all being said, try the following:
# 1.	Create one class per generic category of item sold in the bakery
# •	Cookie class
# •	Cake class
# •	Muffin class
# •	Use these classes to create 1 object per item being sold (e.g if you have 3 cookies for sale you would create 3 Cookie objects based on one Cookie class)
# •	Each item should have the following attributes
# •	description
# •	price
 
# These objects represent digital versions of cookies, so now use these objects as data that you can utilize when displaying information about your cookies, cakes and muffins.
# Try using these objects to
# •	display information on price and description on the subcategory pages
# •	generate the catalog email to send to the requesting user
 
# Completion Requirements:
# The completed assignment should:
# •	fulfill the design needs of the user
# o	it must look and feel like a bakery website
# •	have a front page that links out to subcategory pages
# •	have a page listing all cookies sold
# •	have a page listing all muffins sold
# •	have a page listing all cakes sold
# •	use the Sendgrid API to send an email to the user’s email with a catalog of all items sold
# o	API key should be stored in an environment variable
