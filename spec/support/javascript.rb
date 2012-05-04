require 'database_cleaner'

RSpec.configure do |config|
  # JS drivers don't play nice with transactional fixtures, so we have to handle
  # the database ourselves.
  config.use_transactional_fixtures = false

  config.before :suite do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with :truncation
  end

  config.before :each do                                  
    if example.metadata[:js] || example.metadata[:selenium]
      Capybara.current_driver = example.metadata[:selenium] ? :selenium : :webkit        
      
      # JavaScript drivers need to use truncation.
      DatabaseCleaner.strategy = :truncation
    else
      # Non-JS drivers can use transactions.
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.start
    end
  end
  
  config.after :each do
    Capybara.use_default_driver
    DatabaseCleaner.clean
  end
end