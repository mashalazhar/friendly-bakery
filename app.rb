require 'sinatra'
require 'sendgrid-ruby'

require_relative './bakery.rb'

include SendGrid

@bakery = Bakery.new


get '/index' do
    erb :index
end

get '/cakes' do
    @cakes = Cakes.all
    erb :cakes
end

chocolate_cake = Cakes.new('Brooklyn Blackout', 'Fudgin Delicious', "$28")
redvelvet_cake = Cakes.new('Jessica Rabbit', 'Cocoa and Cream Cheese Goodness', "$28")
carrot_cake = Cakes.new('The Doc', 'Bugs Bunny Approved', "$28")
@bakery.addItem(chocolate_cake)
@bakery.addItem(redvelvet_cake)
@bakery.addItem(carrot_cake)
pp @bakery

get '/cookies' do
    @cookies = Cookies.all
    erb :cookies
end

oatmealraisin_cookie = Cookies.new('The Oatmeal Raisin', 'Oats of Goodness', "$3")
chocolate_chip_cookie = Cookies.new('The Original', 'Chocolate Chip Galore', "$3")
macadamian_cookie = Cookies.new('The Nut', 'Macadamian and White Chocolate', "$3")
@bakery.addItem(oatmealraisin_cookie)
@bakery.addItem(chocolate_chip_cookie)
@bakery.addItem(macadamian_cookie)
pp @bakery

get '/muffins' do
    @muffins = Muffins.all
    erb :muffins
end

blueberry_muffin = Muffins.new('I Got the Blueberries', 'Berry Good!', "$4")
rasberry_muffin = Muffins.new('Raisin Berries', 'Berry Delicious!', "$4")
corn_muffin = Muffins.new('Corns in the Field', 'The Perfect Breakfast', "$4")
@bakery.addItem(blueberry_muffin)
@bakery.addItem(chocolate_chip_cookie)
@bakery.addItem(corn_muffin)
pp @bakery


post '/contact' do
    @email = params[:email]

    from = Email.new(email: 'azhar.mashal@gmail.com')
    to = Email.new(email: 'azhar.mashal@gmail.com')
    subject = 'I would like to subscribe to Friendlys Bakery'
    content = Content.new(type: 'text/plain', value: 'Hello. Thank you for subscribing')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code

    erb :contact
end 

