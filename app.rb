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

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking", "Chris", "Bryony", "Chairman Miaow"].sample
  erb(:index)
end
