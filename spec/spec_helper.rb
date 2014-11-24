ENV["RACK_ENV"] = 'test' # because we need to know what database to work with

require './server.rb' 
require 'database_cleaner'

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end



end