class Makers < Sinatra::Application
  get '/login' do
    "Please Login"
  end

  post '/login' do
    redirect '/'
  end
end
