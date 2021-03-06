# frozen_string_literal: true

# Humans need to sign up to be a User on Attendion
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, :dependent => :destroy
  has_many :attending_events, :dependent  => :destroy

  mount_uploader :avatar, AvatarUploader
end
