ENV["RACK_ENV"] = 'test' # because we need to know what database to work with

require_relatve '../server.rb' 
require 'database_cleaner'
require 'capybara/rspec'

Capybara.app = Chitter.new

RSpec.configure do |config|
  # config.treat_symbols_as_metadata_keys_with_true_values = true
  # config.run_all_when_everything_filtered = true
  # config.filter_run :focus

  # Run specs in random order to surface order dependencies. 
  # config.order = 'random'

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