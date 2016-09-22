get '/questions/:id' do
  @question = Question.find(params[:id])
  @user = User.find(@question.user_id)
  erb :"/questions/show"
end
