class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}, if: :password_digest_changed?
  validates_confirmation_of :password, error: 'Password must match'
  def self.register(data)
    User.new(first_name: data[:first_name], last_name: data[:last_name], email: data[:email], password: data[:password], password_confirmation: data[:password_confirmation])
  end
end
