get '/' do
  @questions = [
    {votes: 2, title: 'test title1'},
    {votes: 20, title: 'test title2'},
    {votes: 36, title: 'test title3'}
  ]
  erb :index
end
