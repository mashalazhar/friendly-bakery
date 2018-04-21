require 'sinatra'
require 'sendgrid-ruby'
require_relative './bakery.rb'
include SendGrid

@bakery = Bakery.new

get '/index' do
    erb :index
end

get '/cakes' do
    @bakery = Bakery.new
    chocolate_cake = Cakes.new('Brooklyn Blackout', 'Fudgin Delicious', "$28", '/images/cake3.jpg')
    redvelvet_cake = Cakes.new('Jessica Rabbit', 'Cocoa and Cream Cheese Goodness', "$28", '/images/cake2.jpg')
    strawberry_shortcake = Cakes.new('Berries and Cream', 'Soft and Scrumptious', "$28", '/images/cake1.jpg')
    @bakery.addItem(chocolate_cake)
    @bakery.addItem(redvelvet_cake)
    @bakery.addItem(strawberry_shortcake)
  
    @allcakes = @bakery.cakes 
    # pp @bakery
   
    erb :cakes
end

get '/cookies' do
    @bakery = Bakery.new
    chocolate_chip_cookie = Cookies.new('The Original', 'Chocolate Chip Galore', "$3", '/images/cookie1.jpeg')
    macadamian_cookie = Cookies.new('The Nut', 'Macadamian and White Chocolate', "$3", '/images/cookie2.jpg')
    oatmealraisin_cookie = Cookies.new('The Oatmeal Raisin', 'Oats of Goodness', "$3", '/images/cookie3.jpeg')
    @bakery.addItem(chocolate_chip_cookie)
    @bakery.addItem(macadamian_cookie)
    @bakery.addItem(oatmealraisin_cookie)
    
    @allcookies = @bakery.cookies 
    # pp @bakery
    
    erb :cookies
end

get '/muffins' do
    @bakery = Bakery.new
    blueberry_muffin = Muffins.new('I Got the Blueberries', 'Berry Good!', "$4", '/images/muffin1.jpg')
    rasberry_muffin = Muffins.new('Raisin Berries', 'Berry Delicious!', "$4", '/images/muffin2.jpg')
    corn_muffin = Muffins.new('Pecan Frenzy', 'Perfect Mix of Nuts', "$4", '/images/muffin3.jpg')
    @bakery.addItem(blueberry_muffin)
    @bakery.addItem(rasberry_muffin)
    @bakery.addItem(corn_muffin)
  
    @allmuffins = @bakery.muffins 
    # pp @bakery
    
    erb :muffins
end

post '/contact' do
    @email = params[:email]

    from = Email.new(email: 'azhar.mashal@gmail.com')
    to = Email.new(email: 'azhar.mashal@gmail.com')
    subject = 'I would like to subscribe to Friendlys Bakery'
    content = Content.new(type: 'text/plain', value: @bakery)
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code

    erb :contact
end 

