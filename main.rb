#myapp.rb
require 'sinatra'
set :bind, '0.0.0.0'

get '/' do
    File.read(File.join('.', '/frontend.html'))
end

post '/dim' do
    level = params[:level]
puts level
    system( "tdtool --dim 994 --dimlevel " + level)
    puts level 
end

