require 'integration_test_helper'

describe 'Home page integration' do
  it 'renders' do
    visit root_path
    body.must_include 'Hi there'
  end

  2.times do
    it 'cleans the database after each test' do
      create(:user)
      User.all.count.must_equal 1
    end
  end
end