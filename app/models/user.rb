class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :name, :password_digest
  validates :email ,uniqueness: true ,presence: true
  validates :name , presence: true
  validates :password_digest ,presence: true
end
