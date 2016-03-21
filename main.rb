#myapp.rb
require 'sinatra'
set :bind, '0.0.0.0'

get '/' do
    File.read(File.join('.', '/frontend.html'))
end

post '/dimmeroff' do
    
    system( "tdtool --off 994")
end

post '/dimmeron' do
    
    system( "tdtool --dimlevel 255 --dim 994")
end
   
