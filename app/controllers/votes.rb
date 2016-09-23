get '/' do
  redirect '/questions/show'
end

post '/votes/:id' do
  # @question = Question.find(session[:question_id])
  answer = Answer.find(params[:id])

  answer.votes.create(type_of_vote: params[:vote])
  redirect "questions/#{session[:question_id]}"
end

post '/votes/question/:id' do
  question = Question.find(params[:id])

  question.votes.create(type_of_vote: params[:vote])

  if request.xhr?
    total_votes(question).to_s
  else
  # @question = Question.find(session[:question_id])

  redirect "questions/#{session[:question_id]}"
  end
end

post '/votes/answer/:id' do
  answer = Answer.find(params[:id])

  answer.votes.create(type_of_vote: params[:vote])

  if request.xhr?
    total_votes(answer).to_s
  else
    redirect "questions/#{session[:question_id]}"
  end
end
