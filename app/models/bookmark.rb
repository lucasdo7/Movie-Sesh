class Bookmark < ApplicationRecord
  belongs_to :movie
  validates :comment, :user_rating, presence: true
end
