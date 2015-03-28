require 'sinatra'
require 'haml'

get '/' do
  "Hello World"
end

get '/gaby' do
  "Gaby"
end

get '/hello/:name' do
  @name = params[:name]
  haml :hello, layout: :application
end
