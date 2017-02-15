class User < ApplicationRecord

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  validates :first_name, :last_name, presence: true, length: {minimum: 2}
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}, if: :password_digest_changed?
  validates_confirmation_of :password, error: 'Password must match'

  before_save do
    self.first_name.capitalize!
    self.last_name.capitalize!
    self.email.downcase!
  end

  def self.new_user(data)
    User.new(first_name: data[:first_name], last_name: data[:last_name], email: data[:email], password: data[:password], password_confirmation: data[:confirm_password])
  end

  def self.update_user(data)
    user = User.find(data[:id])
    if data[:first_name] > ''
      user.update(first_name:data[:first_name])
    end
    if data[:last_name] > ''
      user.update(last_name:data[:last_name])
    end
    if data[:email] > ''
      user.update(email:data[:email])
    end
    if data[:password] > ''
      user.update(password:data[:password])
    end
    user
  end

  def self.delete_user(data)
    user = User.find(data[:id])
    user.destroy
  end

  # def self.login(data)
  #   user = User.find_by_email(date[:email])
  #   if user.authenticate(data[:password])
  #     true
  #   else
  #     false
  #   self
  #   end
  # end
end
