require "sinatra"
require "sinatra/reloader" if development?

get '/' do
    "Hello World"
end

get '/secret' do
    "this is the secret"
end

get '/stella' do
    "I am really hungry"
end

get '/lewis' do
    "I am really poorly"
end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:cat)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:cat)
end

get '/cat-form' do
    erb(:form)
end
