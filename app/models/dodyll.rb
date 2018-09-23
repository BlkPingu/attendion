class Dodyll < ApplicationRecord
  has_many :votes
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :start, presence: true
  validates :end, presence: true
end
