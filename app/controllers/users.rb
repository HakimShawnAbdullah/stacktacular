get '/users/new' do
  if request.xhr?
    erb :'partials/_regform'
  else
    erb :'/users/new'
  end
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect "/"
  end
end
get '/users/:id' do
  @user = User.find(params[:id])
  erb :"/users/show"
end

