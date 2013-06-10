class Makers < Sinatra::Application

  get '/' do
    haml :register
  end
  
end
