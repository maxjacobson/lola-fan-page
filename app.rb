require 'sinatra'
require 'haml'

class Lola
  def age
    # TODO: make this dynamic
    13
  end

  def image_filename
    "/lola.JPG"
  end
end

get '/' do
  haml :welcome, layout: :application
end

get '/about' do
  @lola = Lola.new
  haml :about, layout: :application
end
