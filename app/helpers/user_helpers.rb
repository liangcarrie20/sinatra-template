helpers do
# finds user if logged in
  def current_user
    @current_user ||=User.find_by(id: session[:user_id])
  end
end