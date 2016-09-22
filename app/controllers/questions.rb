get '/questions/:id' do
  @question = Question.find(params[:id])
  p "*" * 20
  @user = User.find(@question.user_id)
  session[:question_id] = @question.id
  erb :"/questions/show"
end
