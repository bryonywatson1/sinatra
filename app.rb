require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "Nuclear codes: 1234567789"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  puts params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end
