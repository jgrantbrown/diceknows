ENV['SINATRA_ENV'] ||="development"

require 'bundler/setup' #require bundler
Bundler.require(:default, ENV['SINATRA_ENV']) #load gems, using bundler


configure :development do
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
) #identify the adapter and create connection for database
end



configure :production do
   db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

   ActiveRecord::Base.establish_connection(
     :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
     :host     => db.host,
     :username => db.user,
     :password => db.password,
     :database => db.path[1..-1],
     :encoding => 'utf8'
     )
end

require_all 'app' #require all MVC files in the app folder
