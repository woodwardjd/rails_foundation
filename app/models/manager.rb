class Manager < ActiveRecord::Base
  # ------------------------------------------------------------------------
  # Authentication Logic
  
  devise :database_authenticatable, :encryptable, :recoverable, :rememberable, :validatable

  # ------------------------------------------------------------------------
  # Virtual & Protected Attributes
  
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
