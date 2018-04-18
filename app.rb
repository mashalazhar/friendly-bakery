require 'sinatra'
require 'sendgrid-ruby'

require_relative './bakery.rb'

include SendGrid

get '/index' do
    erb :index
end

get '/cakes' do
    @cakes = Cakes.all
    erb :cakes
end

get '/cookies' do
    @cookies = Cookies.all
    erb :cookies
end

get '/muffins' do
    @muffins = Muffins.all
    erb :muffins
end

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

