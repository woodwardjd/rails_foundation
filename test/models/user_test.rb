require 'test_helper'

class UserTest < ActiveSupport::TestCase
  it "has a valid factory" do
    create(:user).valid?.must_equal true
  end

  it 'cleans the database after each test' do
    User.all.count.must_equal 0
  end

  it "can be stubbed with mocha" do
    u = User.new
    u.stubs(:foo).returns(:bar)
    u.foo.must_equal(:bar)
  end
end
