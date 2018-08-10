class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, confirmation: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }
end
