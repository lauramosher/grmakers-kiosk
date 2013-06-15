require 'data_mapper'

DataMapper::Logger.new("/tmp/dm.log", :debug)

configure :development do
	DataMapper.setup(:default, "sqlite://tmp/development.db")
end

configure :production do
	DataMapper.setup(:default, ENV['CLEARDB_DATABASE_URL'])
end

DataMapper.finalize

require_relative 'user'
require_relative 'member'
