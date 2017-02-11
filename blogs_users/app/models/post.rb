class Post < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :blog
  belongs_to :user
  validates :title, presence: true, length: {minimum: 7}
  validates :content, presence: true
  self
end
