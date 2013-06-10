class Makers < Sinatra::Application

  post '/login' do
    redirect '/account'
  end

  get '/register' do
    haml :register
  end

  post '/register' do
    redirect '/account'
  end
end
