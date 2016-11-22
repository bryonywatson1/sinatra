require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret message"
end

get '/newroute' do
  "this is a new route"
end

get '/bryonyroute' do
  "this is bryony's route"
end

get '/secretsecond' do
  "this is a second secret"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking", "Chris", "Bryony", "Chairman Miaow"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
