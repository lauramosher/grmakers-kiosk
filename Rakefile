require 'data_mapper'
require './models/init.rb'

env = 'development'

task :set, :env do |t,args|
  env = args[env]
end

namespace :db do
  task :config do
    if env == "development"
      DataMapper.setup(:default, "mysql://localhost/makers")
    else
      DataMapper.setup(:default, ENV['CLEARDB_DATABASE_URL'])
    end
    DataMapper.finalize
  end

  task :update => :config do
    DataMapper.auto_upgrade!
  end

  task :install => :config do
    DataMapper.auto_migrate!
  end

end
