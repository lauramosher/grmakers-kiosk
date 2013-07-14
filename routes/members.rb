class Makers < Sinatra::Application

  get '/members' do
    authenticate!
    haml :"members/index"
  end

  get '/members/show' do
    authenticate!
    haml :"members/show"
  end

  get '/members/interests' do
    authenticate!
    haml :"members/interests"
  end

  get '/members/skills' do
    authenticate!
    haml :"members/skills"
  end

end
