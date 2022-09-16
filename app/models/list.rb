class List < ApplicationRecord
  has_many :movies
  validates :genre, presence: true
end
