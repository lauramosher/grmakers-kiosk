class Makers < Sinatra::Application
  get '/' do
    haml :index
  end
end
