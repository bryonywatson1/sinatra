require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "Nuclear codes: 1234567789"
end

get '/home' do
  "Welcome to this site"
end

get '/buy' do
  "3 magic beans"
end

get '/a' do
  "AAAAAAAA"
end

get '/cat' do
  erb(:index)
end
