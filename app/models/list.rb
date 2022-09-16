class List < ApplicationRecord
  has_many :movies
  has_many :bookmarks
  validates :genre, presence: true
end
