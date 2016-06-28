class User < ActiveRecord::Base
  include BCrypt
  validates :first_name, presence: true
  validates :username, presence: true
  validates :email, uniqueness: true
  has_secure_password


   def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user.password == password
      return @user
    else
      nil
    end
  end

end