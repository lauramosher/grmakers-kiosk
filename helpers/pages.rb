module Pages
  def current?(path='')
    request.path_info == "#{path}" ? 'active' : nil
  end

  def dynamic_title(page)
    page.empty? ? "" : " | #{page}"
  end
end

set :pages, [
  {:title => '', :path => '/'},
  {:title => 'Account', :path => '/account'},
  {:title => 'Members', :path => '/members'},
  {:title => 'Interests', :path => '/members/interests'},
  {:title => 'Skills', :path => '/members/skills'},
  {:title => 'Export', :path => '/export'}
]
