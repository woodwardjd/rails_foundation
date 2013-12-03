require 'integration_test_helper'

class ExampleIntegrationTest < ActionDispatch::IntegrationTest
  it 'renders' do
    visit root_path
    body.must_include 'Hi there'
    find('#root-path').text.must_equal '/'
  end

  2.times do
    it 'cleans the database after each test' do
      create(:user)
      User.all.count.must_equal 1
    end
  end
end
