class User < ActiveRecord::Base
  include BCrypt
  # has_many :somethings
  validates :first_name, presence: true
  validates :username, presence: true
  validates :email, uniqueness: true
  has_secure_password
end