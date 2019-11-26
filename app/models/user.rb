# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
  validates_uniqueness_of :email
  has_many :posts, class_name: 'posts', foreign_key: 'user_id'
  before_create do
    token = SecureRandom.urlsafe_base64
    self.remember_token = Digest::SHA1.hexdigest(token.to_s)
  end
end
