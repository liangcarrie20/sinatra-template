helpers do
# finds user if logged in
  def current_user
    User.find(session[:id]) if session[:id]
  end
end