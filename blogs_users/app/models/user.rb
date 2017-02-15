class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :owners, dependent: :destroy
  has_many :blogs, through: :owners
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  self
end

Blog.first
