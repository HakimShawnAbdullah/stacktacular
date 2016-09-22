get '/' do
  redirect '/questions/show'
end

post '/votes/:id' do
  post_id = params[:id]
  # @question = Question.find(session[:question_id])
  answer = Answer.find(post_id)

  answer.votes.create(type_of_vote: params[:vote])
  redirect "questions/#{session[:question_id]}"
end
