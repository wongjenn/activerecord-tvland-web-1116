require "bundler/setup"
require "require_all"

require "sinatra/activerecord"


Bundler.require

require_all 'app'
require_all 'db'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
