get "/questions/new" do
  erb :"partials/_questionForm"
end

post "/questions" do
  current_user.questions.create(params) if current_user
  redirect "/"
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @user = User.find(@question.user_id)
  session[:question_id] = @question.id
  erb :"/questions/show"
end
