class Response < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :responsive, polymorphic: true
  belongs_to :user
end
