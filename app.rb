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

get '/cat' do
    erb(:cat)
end
