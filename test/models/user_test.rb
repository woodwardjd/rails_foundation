require 'test_helper'

describe User do
  it "has a name" do
    FactoryGirl.build(:user).name.must_equal "John Doe"
  end
end
