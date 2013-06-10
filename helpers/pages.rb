module Pages
  def current?(path='')
    request.path_info == "#{path}" ? 'active' : nil
  end
end

set :pages, [
  {:title => 'Account', :path => '/account'},
  {:title => 'Members', :path => '/members'},
  {:title => 'Interests', :path => '/members/interests'},
  {:title => 'Skills', :path => '/members/skills'},
  {:title => 'Export', :path => '/export'}
]
