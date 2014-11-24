begin
  require 'database_cleaner'
  require 'database_cleaner/cucumber'

  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile, in test group"
end

Around do |scenario, block|
  DatabaseCleaner.cleaning(&block)
end