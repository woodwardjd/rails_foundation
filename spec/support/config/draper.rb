RSpec.configure do |config|
  # Allow us to use Rails URL helpers in decorator specs.
  config.include Rails.application.routes.url_helpers, :type => :decorator
end