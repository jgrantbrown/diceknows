class UserController < ApplicationController

  ######## SIGNUP ########
  get '/signup' do
    if logged_in
      redirect '/'
    else
      erb :"users/signup", :layout => :"layout/external"
    end
  end

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      erb :"users/signup", :layout => :"layout/external", locals: {message: "MISSING INFORMATION! Please fill in all fields."}
    else
      @user = User.create(username: params[:username], email: params[:email], password: params[:password])
      session[:user_id] = @user.id
      redirect '/'
    end
  end

######## LOGIN/LOGOUT ########
  get '/login' do
    if logged_in
      redirect '/'
    else
      erb :"users/login", :layout => :"layout/external"
    end
  end

  post '/login' do
    if params[:username] == "" || params[:password] == ""
      erb :"users/login", :layout => :"layout/external", locals: {message: "MISSING INFORMATION! Please fill in all fields."}
    else
      @user = User.find_by(:username => params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect "/"
      else
        erb :"users/login", :layout => :"layout/external", locals: {message: "INVALID INFORMATION! Please try again."}
      end
    end
  end

  get '/logout' do
    if logged_in
      session.clear
      redirect "/"
    else
      redirect "/"
    end
  end

  ######## USER-LIST ########
  get '/users/:slug' do #render user show page of list and comments
    @user = User.find_by_slug(params[:slug])

    erb :"users/show", :layout => :"layout/internal"
  end


end
