class User < ActiveRecord::Base
  
  has_secure_password
  
  has_many :bid
  belongs_to :role
end
