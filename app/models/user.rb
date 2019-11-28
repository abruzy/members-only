# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 50 }
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts, class_name: 'Post', foreign_key: 'user_id'
  before_create do
    token = SecureRandom.urlsafe_base64
    self.remember_token = Digest::SHA1.hexdigest(token.to_s)
  end
end
