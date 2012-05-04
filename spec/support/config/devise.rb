RSpec.configure do |config|
  # Make authentication work in controller specs.
  config.include Devise::TestHelpers, :type => :controller
end