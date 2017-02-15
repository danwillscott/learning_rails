class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  before_save do
    self.first_name.capitalize!
    self.last_name.capitalize!
    self.email.downcase!
  end
end

