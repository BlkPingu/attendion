class User < ApplicationRecord
  has_many :events, dependent: :destroy

  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::Sha512
  end

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, confirmation: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }

  def deliver_password_reset_instructions!
    reset_perishable_token!
    PasswordResetMailer.reset_email(self).deliver_now
  end

end
