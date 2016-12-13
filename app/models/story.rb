class Story < ApplicationRecord
  has_many :votes

  validates :title, presence: true, uniqueness: true
  validates :link, presence: true
  validates :email, presence: true

  def upvote_count
    votes.where(upvote: true).count
  end

  def downvote_count
    votes.where(upvote: false).count
  end

  def net
    (upvote_count - downvote_count)
  end
end
