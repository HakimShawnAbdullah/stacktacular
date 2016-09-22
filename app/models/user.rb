require 'bcrypt'
require 'pry'

class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  has_many :answers
  has_many :questions
  has_many :votes
  has_many :responses

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end
end
