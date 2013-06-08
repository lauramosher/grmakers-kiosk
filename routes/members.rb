class Makers < Sinatra::Application

  get '/members' do
    haml :"members/index"
  end

  get '/members/show' do
    haml :"members/show"
  end

  get '/members/interests' do
    haml :"members/interests"
  end

  get '/members/skills' do
    haml :"members/skills"
  end

end