get '/users/new' do
  if request.xhr?
    erb :'partials/_regform'
  else
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :"/users/show"
end
