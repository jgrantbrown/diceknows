# require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

######## HOMEPAGE ########
  get '/' do
    #session.clear
    if logged_in
      "hello world"
      erb :"/index", :layout => :"layout/internal"
    else
      erb :"/homepage", :layout => :"layout/external"
    end
  end



######## HELPER METHODS ########
  helpers do
    def logged_in
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end


end
