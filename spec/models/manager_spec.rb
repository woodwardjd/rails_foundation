require 'spec_helper'

describe Manager do
  subject { build :manager }

  describe "supports reading and writing" do
    it "an email" do
      subject.email = "contact@redcross.com"
      subject.email.should == "contact@redcross.com"
    end
    
    it "a password" do
      subject.password = "niblets"
      subject.password.should == "niblets"
    end
    
    it "a password confirmation" do
      subject.password_confirmation = "chunky_bacon"
      subject.password_confirmation.should == "chunky_bacon"
    end
  end

  describe "validations:" do
    it("has a valid Factory") { subject.should be_valid }
    
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    
    it "validates that email looks like an email" do
      %w(notanemail what@foo laff.com).each do |not_an_email|
        subject.should_not allow_value(not_an_email).for(:email)
      end
    end
    
    it "validates that password is the same as password confirmation" do
      subject.password = "chunky_bacon"
      subject.password_confirmation = "creamy_bacon"
      subject.should_not be_valid
      subject.errors[:password].should include "doesn't match confirmation"
    end
  end
end
