require 'sinatra/base'
require 'data_mapper'
require './lib/database.rb'

class Chitter < Sinatra::Base
  enable :sessions

  set :views, Proc.new { File.join(root,  "/views") }
  
  get '/' do
    erb :homepage
  end

  get '/users/new' do
    erb :"users/new"
  end

  post '/users/new' do
    @user = User.create(:email => params[:email],
                        :username => params[:username],
                        :password => params[:password],
                        :password_confirmation => params[:password_confirmation]
                        )
    @user.save
    session[:user_id] = @user.user_id
    redirect to ('/')
  end

   def current_user
      @current_user ||=User.get(session[:user_id]) if session[:user_id]
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


