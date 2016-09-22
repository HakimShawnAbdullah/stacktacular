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
<<<<<<< HEAD
=======

>>>>>>> 25748510adc6b401c13cf5a8ba726daf257fc12f
get '/users/:id' do
  @user = User.find(params[:id])
  erb :"/users/show"
end

<<<<<<< HEAD
=======
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :"/users/edit"
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect "/users/#{@user.id}"
end

delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect '/'
end
>>>>>>> 25748510adc6b401c13cf5a8ba726daf257fc12f
