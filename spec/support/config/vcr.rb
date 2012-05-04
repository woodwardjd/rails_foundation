VCR.configure do |config|
  config.hook_into :webmock
  config.cassette_library_dir = 'spec/cassettes'
  config.ignore_localhost = true
  config.allow_http_connections_when_no_cassette = true

  # https://www.relishapp.com/myronmarston/vcr/v/2-0-0/docs/test-frameworks/usage-with-rspec-metadata
  config.configure_rspec_metadata!

  # Remember to add new keys and secrets from the config/secrets.yml file
  # here to ensure they aren't logged in VCR cassettes.
  #
  config.filter_sensitive_data('<S3_KEY>')    { ENV["S3_KEY"] }
  config.filter_sensitive_data('<S3_SECRET>') { ENV["S3_SECRET"] }
end