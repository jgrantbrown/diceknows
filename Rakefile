ENV['SINATRA_ENV'] ||="development"

require_relative './config/environment'
require 'sinatra/activerecord/rake' #provide access to activerecord rake tasks


# Type `rake -T` on your command line to see the available rake tasks.
# use to access pry in command line
task :console do
  Pry.start
end
