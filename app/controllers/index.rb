get '/' do
  erb :'index'  #EDIT THIS******** this should redirect to whatever is the main page
end


get '/authorization' do
	erb :'/authorization/authorization'
end

get '/logged_in' do
  if session[:user_id]
    return "asdkjashkjdh"
  else
   false
 end
end
