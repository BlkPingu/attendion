class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, confirmation: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }

  mount_uploader :avatar, AvatarUploader
end
