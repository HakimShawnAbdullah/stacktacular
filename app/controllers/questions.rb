get "/questions/show" do
  erb :"questions/show"
end

get "/questions/new" do
  if request.xhr?
    erb :"partials/_questionForm"
  else
    erb :"questions/new"
  end
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
