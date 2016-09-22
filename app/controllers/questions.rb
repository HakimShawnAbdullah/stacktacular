get '/users/:user_id/questions' do
  @user = User.find(params[:user_id])
end
