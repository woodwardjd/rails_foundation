RSpec.configure do |config|
  # Clean up generated Dragonfly images after each run.
  config.after(:suite) do
    test_dragonfly_images = "#{Rails.root}/public/system/dragonfly/test"
    FileUtils.rm_r(test_dragonfly_images) if File.exists?(test_dragonfly_images)
  end
end