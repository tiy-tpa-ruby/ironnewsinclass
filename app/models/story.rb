class Story < ApplicationRecord
  has_many :votes

  validates :title, presence: true, uniqueness: true
  validates :link, presence: true
  validates :email, presence: true
end
