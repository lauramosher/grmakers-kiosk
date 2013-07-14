class Makers < Sinatra::Application

  before do
    settings.pages.each do |page|
      if current?(page[:path])
        @title = page[:title]
      end
    end
  end
end

require_relative 'main'
require_relative 'user'
require_relative 'members'
require_relative 'export'
