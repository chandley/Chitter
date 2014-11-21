env = ENV["RACK_ENV"] || "development"

require 'data_mapper'
require './lib/user'
require './lib/message'
# require './app/helpers/helpers.rb'

DataMapper.setup(:default, ENV["DATABASE_URL"] || "postgres://localhost/chitter_#{env}")

DataMapper.finalize
DataMapper.auto_upgrade!