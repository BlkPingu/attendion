class Dodyll < ApplicationRecord
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :start, presence: true
  validates :end, presence: true
end
