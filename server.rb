require 'sinatra/base'
require 'data_mapper'
require './lib/database.rb'

class Chitter < Sinatra::Base
  get '/' do
    'Welcome to Chitter'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


