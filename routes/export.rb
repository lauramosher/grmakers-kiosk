class Makers < Sinatra::Application

  get '/export' do
    haml :export
  end

end
