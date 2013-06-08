helpers do
  def current?(path='')
    request.path_info == "#{path}" ? 'active' : nil
  end
end

set :pages, [
  {:title => 'Home', :path => '/'},
  {:title => 'Members', :path => '/members'},
  {:title => 'Interests', :path => '/interests'},
  {:title => 'Skills', :path => '/skills'},
  {:title => 'Export', :path => '/export'},
  {:title => 'Register', :path => '/register'}
]