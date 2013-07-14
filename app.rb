require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/url_for'
require 'haml'
require 'data_mapper'

# Makers - Main Application
class Makers < Sinatra::Application
  enable :sessions

  configure :production do
    set :haml, { :ugly=>true }
    set :clean_trace, true
    DataMapper.setup(:default, ENV['CLEARDB_DATABASE_URL'])
  end

  configure :development do
    DataMapper.setup(:default, "mysql://localhost/makers")
  end

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end
end

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'
