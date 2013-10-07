require 'test_helper'

describe User do
  it "has a name" do
    FactoryGirl.build(:user).name.must_equal "John Doe"
  end

  it "can be stubbed with mocha" do
    u = User.new
    u.stubs(:foo).returns(:bar)
    u.foo.must_equal(:bar)
  end
end
