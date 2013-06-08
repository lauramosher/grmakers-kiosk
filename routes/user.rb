class Makers < Sinatra::Application

  get '/account' do
    haml :"user/account"
  end

  post '/account/update' do

  end

end