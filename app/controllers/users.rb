# list of all users
get '/users' do
  erb :'users/index'
end

# registration route
get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user[:id]
    redirect '/'
  else
    p "******"
    p "error"
    # error handling goes here
    redirect '/users/new'
  end
end

# profile page
get 'users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

# *****sessions can go here or sessions.rb controller *****
# AKA login (by email)
get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(email params[:user][:email])
  # if user exists & pw correct (using password digest instead of password hash)
  if @user && @user.authenticate(params[:user][:password])
    session[:id] = @user[:id]
    # redirects to main page ..
    redirect '/'
  else
    # error handling could be handled here..
    p "Your password and or email was incorrect"
    redirect '/sessions/new'
  end
end

# logout
delete '/sessions/:id' do
  session[:id] = nil
end