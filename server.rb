require 'sinatra/base'
require 'data_mapper'
require './lib/database.rb'

class Chitter < Sinatra::Base

  set :views, Proc.new { File.join(root,  "/views") }
  
  get '/' do
    'Welcome to Chitter'
    erb :homepage
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


