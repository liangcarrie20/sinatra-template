class User < ActiveRecord::Base
  include BCrypt
  # has_many :somethings
  validates :username, presence: true
  has_secure_password
end
