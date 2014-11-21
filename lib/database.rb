env = ENV["RACK_ENV"] || "development"

require 'data_mapper'
# require './lib/link'
require './lib/user'
# require './app/helpers/helpers.rb'

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

DataMapper.finalize
DataMapper.auto_upgrade!