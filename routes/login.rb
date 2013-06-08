class Makers < Sinatra::Application

  post '/login' do
    redirect '/success'
  end
end
