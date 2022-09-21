class Movie < ApplicationRecord
  has_many :seshs
  has_many :bookmarks
  validates :title, :overview, :director, :rating_imdb, :release_year, :runtime, :language, presence: true
  validates :title, uniqueness: true
end
