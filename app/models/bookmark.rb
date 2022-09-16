class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, :user_rating, presence: true
end
