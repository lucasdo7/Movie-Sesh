class Movie < ApplicationRecord
  has_many :seshs
  has_many :bookmarks
  belongs_to :list
  validates :title, :overview, :rating_imdb, :movie_poster, :release_year, :runtime, :language, :youtrailler, presence: true
  validates :title, uniqueness: true
end
