class Makers < Sinatra::Application

  before do
    settings.pages.each do |page|
      if current?(page[:path])
        @title = page[:title]
      end
    end
  end
end

require_relative 'login'
require_relative 'main'
