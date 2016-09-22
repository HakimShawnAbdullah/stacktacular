post "/sessions" do
  # get the user object
  user = User.find_by(email: params[:email])
  # authenticate the password
  if user && user.password == params[:password]
    # if success add something to the session
    session[:user_id] = user.id
  # redirect to index
    redirect "/"
  else
     redirect "/"
  end
end

  delete '/sessions' do
    session.delete(:user_id) if session[:user_id]
    redirect "/"
  end

