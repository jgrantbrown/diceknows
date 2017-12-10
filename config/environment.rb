ENV['SINATRA_ENV'] ||="development"

require 'bundler/setup' #require bundler
Bundler.require(:default, ENV['SINATRA_ENV']) #load gems, using bundler

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "db/#{ENV['SINATRA_ENV']}.postgresql"
) #identify the adapter and create connection for database

require_all 'app' #require all MVC files in the app folder
