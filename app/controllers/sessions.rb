post "/sessions" do
  # get the user object
  user = User.find_by(email: params[:email])
  # authenticate the password
  if user.authenticate(params[:hashed_password])
  # if success add something to the session
  # redirect to index
    session[:user_id] = user.id
    redirect "/"
  else
     redirect "/"
  end
end
