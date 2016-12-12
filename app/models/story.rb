class Story < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :link, presence: true
  validates :email, presence: true
end
