get '/responses/questions/new' do
  if request.xhr?
    erb :"partials/_questionResponseForm"
  else
    erb :"responses/new"
  end
end

 post '/responses/questions/:id' do
    question = Question.find(params[:id])

    question.responses.create(content: params[:content])
    redirect  "questions/#{session[:question_id]}"
 end

get '/responses/answers/:id/new' do
  @answer_id = params[:id]
  if request.xhr?
    erb :"partials/_answerResponseForm"
  else
    erb :"responses/newAnswer"
  end
end

post '/responses/answers/:id' do
    answer = Answer.find(params[:id])

    answer.responses.create(content: params[:content])
    redirect  "questions/#{session[:question_id]}"
 end

