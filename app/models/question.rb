class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :responses, as: :responsive
  has_many  :votes, as: :votable
  has_many :answers
  belongs_to :user
end
