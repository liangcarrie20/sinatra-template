class User < ActiveRecord::Base
  include BCrypt
  # password digest:
  has_secure_password
  # has_many : ......
  validates :email, uniqueness: true
end
