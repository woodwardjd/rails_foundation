require 'factory_girl'
Dir["#{Rails.root}/spec/support/factories/*.rb"].each {|f| require f}

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts "Beginning database seed..."

if Manager.where(email: "manager@example.com").empty?
  puts "Creating demo manager (manager@example.com)..."
  manager = FactoryGirl.create(:manager, 
    :email                 => 'manager@example.com', 
    :password              => 'manager',
    :password_confirmation => 'manager')
else
  puts "Demo manager (manager@example.com) already exists."
end

puts "Completed database seed."