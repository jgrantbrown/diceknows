source 'https://rubygems.org'
ruby "2.0.0"

group :production, :staging do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end


git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }



gem 'sinatra'
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem "tux"
