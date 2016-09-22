helpers do
  # def total_votes(post)
  def total_votes(post)
    # up = post.votes.where(type_of_vote: "upvote").count
    # down = post.votes.where(type_of_vote: "downvote").count
    # up + down
    score = 0
    post.votes.each do |vote|
      if vote.type_of_vote == "upvote"
        score += 1
      else
        score -= 1
      end
    end
    score
  end
end