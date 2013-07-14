class Makers < Sinatra::Application

  get '/account' do
    authenticate!
    haml :"user/account"
  end

  post '/account/update' do
    authenticate!

  end

  post '/login' do
    redirect '/account'
  end

  post '/register' do
    redirect '/account'
  end

end
