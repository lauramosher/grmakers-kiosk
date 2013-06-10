class Makers < Sinatra::Application

  get '/' do
    redirect '/account' if authenticated?
    haml :index
  end
  
end
