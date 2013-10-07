require 'integration_test_helper'

describe 'sign in integration' do
  it 'succeeds' do
    visit '/users/sign_in'

    email = 'alice@example.com'
    password = 'asdfasdfasdf'
    create(:user, email: email, password: password)

    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button "Sign in"
    assert page.has_content?("Signed in successfully.")
  end
end
