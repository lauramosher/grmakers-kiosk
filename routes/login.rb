class Makers < Sinatra::Application

  post '/login' do
    redirect '/account'
  end

  post '/register' do
    redirect '/account'
  end
end
