get '/answers/new' do
  if request.xhr?
    erb :'partials/_answerForm'
  else
    erb :"/answers/new"
  end
end

post '/answers' do
  question = Question.find(session[:question_id])
  question.answers.create(content: params[:content], question_id: question.id)

  redirect :"questions/#{session[:question_id]}"
end
