class Sesh < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :sesh_date, :sesh_hour, presence: true
end
