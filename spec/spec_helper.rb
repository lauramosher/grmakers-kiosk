require 'spork'

Spork.prefork do
  require File.join(File.dirname(__FILE__), '..', 'app.rb')

  require 'rubygems'
  require 'sinatra'
  require 'rspec'
  require 'rack/test'
  require 'test/unit'
  require 'webrat'

  # set test environments
  set :environment, :test
  set :run, false
  set :raise_errors, true
  set :logging, false

  Webrat.configure do |config|
    config.mode = :rack
  end


  RSpec.configure do |config|
    config.mock_with :rspec
    config.include Rack::Test::Methods
    config.include Webrat::Methods
    config.include Webrat::Matchers
  end

  def app
    @app ||= Makers.new
  end
end

Spork.each_run do
end
