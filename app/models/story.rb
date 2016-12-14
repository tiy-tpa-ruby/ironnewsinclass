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
<<<<<<< HEAD
=======

  def net
    (upvote_count - downvote_count)
  end
>>>>>>> c7e954c672584b52b7da190421339e622d8e7d9d
end
