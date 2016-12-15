class Story < ApplicationRecord
  has_many :votes
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :link, presence: true

  attachment :cover_image

  def upvote_count
    votes.where(upvote: true).count
  end

  def downvote_count
    votes.where(upvote: false).count
  end

  def net
    (upvote_count - downvote_count)
  end

  def not_already_voted?(user)
    votes.where(user: user).count == 0
  end
end
