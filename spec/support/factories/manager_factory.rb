FactoryGirl.define do
  factory :manager do
    email                 { Faker::Internet.email }
    password              { 'fake_password' }
    password_confirmation { password }
  end
end