class Session < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :date, :hour, presence: true
end
